//
//  VSMPLNewsInteractor.h
//  ViperSample
//
//  Created by dmitry on 23/01/2018.
//  Copyright © 2018 dmitryklochkov. All rights reserved.
//

#import "VSMPLNewsInteractorInput.h"

@protocol VSMPLNewsInteractorOutput;

@interface VSMPLNewsInteractor : NSObject <VSMPLNewsInteractorInput>

@property (nonatomic, weak) id<VSMPLNewsInteractorOutput> output;

@end
