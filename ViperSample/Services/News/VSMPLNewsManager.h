//
//  VSMPLNewsManager.h
//  ViperSample
//
//  Created by admin on 22/01/2018.
//  Copyright © 2018 Dmitry Klochkov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "VSMPLNews.h"
@class VSMPLNewsFilter;


@interface VSMPLNewsManager : NSObject

-(NSInteger) getNewsCountWithFilter:(VSMPLNewsFilter *) filter;
-(id<VSMPLNews>) getNewsWithFilter:(VSMPLNewsFilter *) filter andRow:(NSInteger) row;

@end
