//
//  VSMPLNewsFilterSource.h
//  ViperSample
//
//  Created by admin on 24/01/2018.
//  Copyright © 2018 Dmitry Klochkov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "VSMPLNewsFilterProtocol.h"

@protocol VSMPLNewsFilterSource<NSObject>

@property(nonatomic,readonly) id<VSMPLNewsFilterProtocol> filter;

@end
