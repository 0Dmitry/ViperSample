//
//  VSMPLNewsFilter.m
//  ViperSample
//
//  Created by admin on 26/01/2018.
//  Copyright © 2018 Dmitry Klochkov. All rights reserved.
//

#import "VSMPLNewsFilter.h"

@implementation VSMPLNewsFilter

@synthesize newsId = _newsId;
@synthesize isRead = _isRead;


-(instancetype)initWithId:(NSNumber *)newsId isRead:(NSNumber *)isRead {
    if (self = [super init]) {
        _newsId = newsId;
        _isRead = isRead;
    }
    return self;
}

@end
