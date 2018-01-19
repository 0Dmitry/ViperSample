//
//  VSMPLNewsService.m
//  ViperSample
//
//  Created by admin on 19/01/2018.
//  Copyright © 2018 Dmitry Klochkov. All rights reserved.
//

#import "VSMPLUnreadNewsService.h"

@implementation VSMPLUnreadNewsService

- (id<VSMPLNews>)getNewsForRow:(NSInteger)row {
    NSInteger newsId = row;
    NSString * title = [NSString stringWithFormat:@"Title %ld", (long)row + 1];
    NSString * text = [NSString stringWithFormat:@"Text %ld", (long)row + 1];
    NSDate * date = [NSDate new];
    
    id<VSMPLNews> news = [[VSMPLDefaultNews alloc] initWithNewsId:newsId title:title text:text date:date];
    
    return news;
}

- (NSInteger)newsCount {
    return 10;
}

@end
