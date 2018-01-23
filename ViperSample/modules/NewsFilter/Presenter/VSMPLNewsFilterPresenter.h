//
//  VSMPLNewsFilterPresenter.h
//  ViperSample
//
//  Created by dmitry on 22/01/2018.
//  Copyright © 2018 dmitryklochkov. All rights reserved.
//

#import "VSMPLNewsFilterViewOutput.h"
#import "VSMPLNewsFilterInteractorOutput.h"
#import "VSMPLNewsFilterModuleInput.h"
#import "VSMPLNewsFilterModuleOutput.h"

@protocol VSMPLNewsFilterViewInput;
@protocol VSMPLNewsFilterInteractorInput;
@protocol VSMPLNewsFilterRouterInput;

@interface VSMPLNewsFilterPresenter : NSObject <VSMPLNewsFilterModuleInput, VSMPLNewsFilterViewOutput, VSMPLNewsFilterInteractorOutput>

@property (nonatomic, weak) id<VSMPLNewsFilterViewInput> view;
@property (nonatomic, strong) id<VSMPLNewsFilterInteractorInput> interactor;
@property (nonatomic, strong) id<VSMPLNewsFilterRouterInput> router;
@property (nonatomic, strong) id<VSMPLNewsFilterModuleOutput> output;

@end
