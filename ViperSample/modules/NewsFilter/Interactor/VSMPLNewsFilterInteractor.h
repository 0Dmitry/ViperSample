//
//  VSMPLNewsFilterInteractor.h
//  ViperSample
//
//  Created by dmitry on 22/01/2018.
//  Copyright © 2018 dmitryklochkov. All rights reserved.
//

#import "VSMPLNewsFilterInteractorInput.h"

@protocol VSMPLNewsFilterInteractorOutput;

@interface VSMPLNewsFilterInteractor : NSObject <VSMPLNewsFilterInteractorInput>

@property (nonatomic, weak) id<VSMPLNewsFilterInteractorOutput> output;

@end
