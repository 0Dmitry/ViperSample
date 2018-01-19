//
//  VSMPLchild2Interactor.h
//  ViperSample
//
//  Created by dmitry on 17/01/2018.
//  Copyright © 2018 dmitryklochkov. All rights reserved.
//

#import "VSMPLchild2InteractorInput.h"

@protocol VSMPLchild2InteractorOutput;

@interface VSMPLchild2Interactor : NSObject <VSMPLchild2InteractorInput>

@property (nonatomic, weak) id<VSMPLchild2InteractorOutput> output;

@end
