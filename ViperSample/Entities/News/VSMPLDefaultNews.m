//
//  VSMPLNews.m
//  ViperSample
//
//  Created by admin on 19/01/2018.
//  Copyright © 2018 Dmitry Klochkov. All rights reserved.
//

#import "VSMPLDefaultNews.h"

@implementation VSMPLDefaultNews

-(id)initWithNewsId:(NSInteger)newsId title:(NSString *)title text:(NSString *)text date:(NSDate *)date {
    if (self = [super init]) {
        _newsId = newsId;
        _title = title;
        _text = text;
        _date = date;
    }
    return self;
}

+ (nonnull EKObjectMapping *)objectMapping {
    return [EKObjectMapping mappingForClass:self withBlock:^(EKObjectMapping * _Nonnull mapping) {
        [mapping mapPropertiesFromDictionary:@{
                                               @"id": @"newsId"
        }];
        
        [mapping mapPropertiesFromArray:@[@"title", @"isRead", @"text"]];
        
        NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
        [dateFormatter setTimeZone:[NSTimeZone timeZoneWithAbbreviation:@"UTC"]];
        [dateFormatter setDateFormat:@"yyyy-MM-dd"];
        [mapping mapKeyPath:@"date" toProperty:@"date" withDateFormatter:dateFormatter];
    }];
}

@end
