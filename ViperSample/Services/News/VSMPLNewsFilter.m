//
//  VSMPLNewsFilter.m
//  ViperSample
//
//  Created by admin on 22/01/2018.
//  Copyright © 2018 Dmitry Klochkov. All rights reserved.
//

#import "VSMPLNewsFilter.h"

@implementation VSMPLNewsFilter

-(instancetype)initWithIsRead:(NSNumber *)isRead {
    if (self = [super init]) {
        _isRead = isRead;
    }
    return self;
}

@end
