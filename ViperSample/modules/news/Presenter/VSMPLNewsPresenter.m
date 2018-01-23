//
//  VSMPLNewsPresenter.m
//  ViperSample
//
//  Created by dmitry on 23/01/2018.
//  Copyright © 2018 dmitryklochkov. All rights reserved.
//

#import "VSMPLNewsPresenter.h"

#import "VSMPLNewsViewInput.h"
#import "VSMPLNewsInteractorInput.h"
#import "VSMPLNewsRouterInput.h"

@implementation VSMPLNewsPresenter
@synthesize newsListModule;
@synthesize newsFilterModule;

#pragma mark - Методы VSMPLNewsModuleInput

- (void)configureModule {
    // Стартовая конфигурация модуля, не привязанная к состоянию view
}

#pragma mark - Методы VSMPLNewsViewOutput

- (void)didTriggerViewReadyEvent {
    [self.router presentNewsFilterModule];
    
	[self.view setupInitialState];
}

#pragma mark - Методы VSMPLNewsInteractorOutput



- (void)configureNewsFilterModuleView:(UIViewController *)view {
    [self.view configureNewsFilterModuleView:view];
}

@end
