//
//  VSMPLNewsDetailsPresenter.h
//  ViperSample
//
//  Created by dmitry on 25/01/2018.
//  Copyright © 2018 dmitryklochkov. All rights reserved.
//

#import "VSMPLNewsDetailsViewOutput.h"
#import "VSMPLNewsDetailsInteractorOutput.h"
#import "VSMPLNewsDetailsModuleInput.h"
#import "VSMPLNewsDetailsModuleOutput.h"

@protocol VSMPLNewsDetailsViewInput;
@protocol VSMPLNewsDetailsInteractorInput;
@protocol VSMPLNewsDetailsRouterInput;

@interface VSMPLNewsDetailsPresenter : NSObject <VSMPLNewsDetailsModuleInput, VSMPLNewsDetailsViewOutput, VSMPLNewsDetailsInteractorOutput>

@property (nonatomic, weak) id<VSMPLNewsDetailsViewInput> view;
@property (nonatomic, strong) id<VSMPLNewsDetailsInteractorInput> interactor;
@property (nonatomic, strong) id<VSMPLNewsDetailsRouterInput> router;
@property (nonatomic, strong) id<VSMPLNewsDetailsModuleOutput> output;


@end
