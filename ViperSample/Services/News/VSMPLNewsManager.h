//
//  VSMPLNewsManager.h
//  ViperSample
//
//  Created by admin on 22/01/2018.
//  Copyright © 2018 Dmitry Klochkov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "VSMPLNews.h"
@protocol VSMPLNewsFilterProtocol;


@interface VSMPLNewsManager : NSObject

-(NSInteger) getNewsCountWithFilter:(id<VSMPLNewsFilterProtocol>) filter;
-(id<VSMPLNews>) getNewsWithFilter:(id<VSMPLNewsFilterProtocol>) filter andRow:(NSInteger) row;

@end
