//
//  VSMPLchild1Presenter.m
//  ViperSample
//
//  Created by dmitry on 17/01/2018.
//  Copyright © 2018 dmitryklochkov. All rights reserved.
//

#import "VSMPLchild1Presenter.h"

#import "VSMPLchild1ViewInput.h"
#import "VSMPLchild1InteractorInput.h"
#import "VSMPLchild1RouterInput.h"

@implementation VSMPLchild1Presenter

#pragma mark - Методы VSMPLchild1ModuleInput

- (void)configureModule {
    // Стартовая конфигурация модуля, не привязанная к состоянию view
}

#pragma mark - Методы VSMPLchild1ViewOutput

- (void)didTriggerViewReadyEvent {
    
	[self.view setupInitialState];
}

- (void)backButtonTapped {
    [self.router openParentView];
}

#pragma mark - Методы VSMPLchild1InteractorOutput

@end
