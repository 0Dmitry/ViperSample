//
//  VSMPLNewsManager.m
//  ViperSample
//
//  Created by admin on 22/01/2018.
//  Copyright © 2018 Dmitry Klochkov. All rights reserved.
//

#import "VSMPLNewsManager.h"
#import "VSMPLDefaultNews.h"
#import <EasyMapping.h>
#import "VSMPLNewsFilterProtocol.h"


@interface VSMPLNewsManager()
@property (nonatomic, strong) NSArray<VSMPLDefaultNews *> * allNews;
@end


@implementation VSMPLNewsManager

-(NSInteger)getNewsCountWithFilter:(id<VSMPLNewsFilterProtocol>)filter {
    return [[self getNewsWithFilter:filter] count];
}

-(id<VSMPLNews>)getNewsWithFilter:(id<VSMPLNewsFilterProtocol>)filter andRow:(NSInteger)row {
    return [self getNewsWithFilter:filter][row];
}

-(NSArray<id<VSMPLNews>> *)getNewsWithFilter:(id<VSMPLNewsFilterProtocol>)filter{
    return [self.allNews filteredArrayUsingPredicate:[NSPredicate predicateWithBlock:^BOOL(id<VSMPLNews>  _Nullable evaluatedObject, NSDictionary<NSString *,id> * _Nullable bindings) {
        BOOL match = YES;
        
        if (filter.isRead != nil) {
            match = evaluatedObject.isRead == filter.isRead.boolValue;
        }
        
        if (filter.newsId != nil) {
            match = evaluatedObject.newsId == filter.newsId.integerValue;
        }
        
        
        return match;
    }]];
}

-(void) loadNewsFromFile {
    NSURL * newsFileUrl = [[NSBundle.mainBundle resourceURL] URLByAppendingPathComponent:@"news.json"];
    
    NSData * newsData = [NSData dataWithContentsOfURL:newsFileUrl];
    
    NSArray * newsJSONArray = [NSJSONSerialization JSONObjectWithData:newsData options:0 error:nil];
    
    _allNews = [EKMapper arrayOfObjectsFromExternalRepresentation:newsJSONArray withMapping:[VSMPLDefaultNews objectMapping]];
    
}

-(NSArray<id<VSMPLNews>> *) allNews {
    if (_allNews == nil) {
        [self loadNewsFromFile];
    }
    
    return _allNews;
}

-(void) setIsRead:(BOOL) isRead forNewsId:(NSInteger) newsId {
    for (VSMPLDefaultNews * news in _allNews) {
        if (news.newsId == newsId) {
            news.isRead = isRead;
            break;
        }
    }
}






@end
