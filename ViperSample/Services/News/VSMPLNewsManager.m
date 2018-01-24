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
@property (nonatomic) NSArray<id<VSMPLNews>> * allNews;
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
            match = evaluatedObject.isRead == [filter.isRead boolValue];
        }
        return match;
    }]];
}

-(NSArray<id<VSMPLNews>> *) loadNewsFromFile {
    NSURL * newsFileUrl = [[NSBundle.mainBundle resourceURL] URLByAppendingPathComponent:@"news.json"];
    
    NSData * newsData = [NSData dataWithContentsOfURL:newsFileUrl];
    
    NSArray * newsJSONArray = [NSJSONSerialization JSONObjectWithData:newsData options:0 error:nil];
    
    NSArray * newsArray = [EKMapper arrayOfObjectsFromExternalRepresentation:newsJSONArray withMapping:[VSMPLDefaultNews objectMapping]];
    
    return newsArray;
    
}

-(NSArray<id<VSMPLNews>> *) allNews {
    if (_allNews == nil) {
        _allNews = [self loadNewsFromFile];
    }
    
    return _allNews;
}




@end
