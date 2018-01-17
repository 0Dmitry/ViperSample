//
//  VSMPLchild2Presenter.h
//  ViperSample
//
//  Created by dmitry on 17/01/2018.
//  Copyright © 2018 dmitryklochkov. All rights reserved.
//

#import "VSMPLchild2ViewOutput.h"
#import "VSMPLchild2InteractorOutput.h"
#import "VSMPLchild2ModuleInput.h"

@protocol VSMPLchild2ViewInput;
@protocol VSMPLchild2InteractorInput;
@protocol VSMPLchild2RouterInput;

@interface VSMPLchild2Presenter : NSObject <VSMPLchild2ModuleInput, VSMPLchild2ViewOutput, VSMPLchild2InteractorOutput>

@property (nonatomic, weak) id<VSMPLchild2ViewInput> view;
@property (nonatomic, strong) id<VSMPLchild2InteractorInput> interactor;
@property (nonatomic, strong) id<VSMPLchild2RouterInput> router;

@end
