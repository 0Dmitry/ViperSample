//
//  VSMPLNewsService.m
//  ViperSample
//
//  Created by admin on 19/01/2018.
//  Copyright © 2018 Dmitry Klochkov. All rights reserved.
//

#import "VSMPLNewsService.h"

@implementation VSMPLNewsService

- (VSMPLNews *)getNewsForRow:(NSInteger)row {
    NSInteger newsId = row;
    NSString * title = [NSString stringWithFormat:@"Title %ld", (long)row];
    NSString * text = [NSString stringWithFormat:@"Text %ld", (long)row];
    NSDate * date = [NSDate new];
    
    VSMPLNews * news = [[VSMPLNews alloc] initWithNewsId:newsId title:title text:text date:date];
    
    return news;
}

- (NSInteger)newsCount {
    return 23;
}

@end
