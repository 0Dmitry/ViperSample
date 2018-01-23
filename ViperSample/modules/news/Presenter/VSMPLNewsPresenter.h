//
//  VSMPLNewsPresenter.h
//  ViperSample
//
//  Created by dmitry on 23/01/2018.
//  Copyright © 2018 dmitryklochkov. All rights reserved.
//

#import "VSMPLNewsViewOutput.h"
#import "VSMPLNewsInteractorOutput.h"
#import "VSMPLNewsModuleInput.h"

@protocol VSMPLNewsViewInput;
@protocol VSMPLNewsInteractorInput;
@protocol VSMPLNewsRouterInput;

@interface VSMPLNewsPresenter : NSObject <VSMPLNewsModuleInput, VSMPLNewsViewOutput, VSMPLNewsInteractorOutput>

@property (nonatomic, weak) id<VSMPLNewsViewInput> view;
@property (nonatomic, strong) id<VSMPLNewsInteractorInput> interactor;
@property (nonatomic, strong) id<VSMPLNewsRouterInput> router;

@end
