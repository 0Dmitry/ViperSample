//
//  VSMPLchild2Presenter.m
//  ViperSample
//
//  Created by dmitry on 17/01/2018.
//  Copyright © 2018 dmitryklochkov. All rights reserved.
//

#import "VSMPLchild2Presenter.h"

#import "VSMPLchild2ViewInput.h"
#import "VSMPLchild2InteractorInput.h"
#import "VSMPLchild2RouterInput.h"

@implementation VSMPLchild2Presenter

#pragma mark - Методы VSMPLchild2ModuleInput

- (void)configureModule {
    // Стартовая конфигурация модуля, не привязанная к состоянию view
}

#pragma mark - Методы VSMPLchild2ViewOutput

- (void)didTriggerViewReadyEvent {
	[self.view setupInitialState];
}

#pragma mark - Методы VSMPLchild2InteractorOutput

@end
