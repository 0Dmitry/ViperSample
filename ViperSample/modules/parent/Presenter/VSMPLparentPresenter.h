//
//  VSMPLparentPresenter.h
//  ViperSample
//
//  Created by dmitry on 17/01/2018.
//  Copyright © 2018 dmitryklochkov. All rights reserved.
//

#import "VSMPLparentViewOutput.h"
#import "VSMPLparentInteractorOutput.h"
#import "VSMPLparentModuleInput.h"

@protocol VSMPLparentViewInput;
@protocol VSMPLparentInteractorInput;
@protocol VSMPLparentRouterInput;

@interface VSMPLparentPresenter : NSObject <VSMPLparentModuleInput, VSMPLparentViewOutput, VSMPLparentInteractorOutput>

@property (nonatomic, weak) id<VSMPLparentViewInput> view;
@property (nonatomic, strong) id<VSMPLparentInteractorInput> interactor;
@property (nonatomic, strong) id<VSMPLparentRouterInput> router;

@end
