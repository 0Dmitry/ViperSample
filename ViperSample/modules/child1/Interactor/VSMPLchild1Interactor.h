//
//  VSMPLchild1Interactor.h
//  ViperSample
//
//  Created by dmitry on 17/01/2018.
//  Copyright © 2018 dmitryklochkov. All rights reserved.
//

#import "VSMPLchild1InteractorInput.h"

@protocol VSMPLchild1InteractorOutput;

@interface VSMPLchild1Interactor : NSObject <VSMPLchild1InteractorInput>

@property (nonatomic, weak) id<VSMPLchild1InteractorOutput> output;

@end
