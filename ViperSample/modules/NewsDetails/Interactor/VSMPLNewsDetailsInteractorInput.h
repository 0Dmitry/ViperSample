//
//  VSMPLNewsDetailsInteractorInput.h
//  ViperSample
//
//  Created by dmitry on 25/01/2018.
//  Copyright © 2018 dmitryklochkov. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "VSMPLNews.h"

@protocol VSMPLNewsDetailsInteractorInput <NSObject>

-(id<VSMPLNews>) getNewsWithId:(NSInteger) newsId;

@end
