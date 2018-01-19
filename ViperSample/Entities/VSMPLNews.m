//
//  VSMPLNews.m
//  ViperSample
//
//  Created by admin on 19/01/2018.
//  Copyright © 2018 Dmitry Klochkov. All rights reserved.
//

#import "VSMPLNews.h"

@implementation VSMPLNews

-(id)initWithNewsId:(NSInteger)newsId title:(NSString *)title text:(NSString *)text date:(NSDate *)date {
    if (self = [super init]) {
        _newsId = newsId;
        _title = title;
        _text = text;
        _date = date;
    }
    return self;
}

@end
