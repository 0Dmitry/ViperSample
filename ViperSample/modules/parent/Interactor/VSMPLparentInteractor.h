//
//  VSMPLparentInteractor.h
//  ViperSample
//
//  Created by dmitry on 17/01/2018.
//  Copyright © 2018 dmitryklochkov. All rights reserved.
//

#import "VSMPLparentInteractorInput.h"

@protocol VSMPLparentInteractorOutput;

@interface VSMPLparentInteractor : NSObject <VSMPLparentInteractorInput>

@property (nonatomic, weak) id<VSMPLparentInteractorOutput> output;

@end
