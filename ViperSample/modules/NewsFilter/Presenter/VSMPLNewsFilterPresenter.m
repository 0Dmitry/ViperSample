//
//  VSMPLNewsFilterPresenter.m
//  ViperSample
//
//  Created by dmitry on 22/01/2018.
//  Copyright © 2018 dmitryklochkov. All rights reserved.
//

#import "VSMPLNewsFilterPresenter.h"

#import "VSMPLNewsFilterViewInput.h"
#import "VSMPLNewsFilterInteractorInput.h"
#import "VSMPLNewsFilterRouterInput.h"
#import "VSMPLNewsFilterModuleOutput.h"

@implementation VSMPLNewsFilterPresenter

#pragma mark - Методы VSMPLNewsFilterModuleInput

- (void)configureModule {
    // Стартовая конфигурация модуля, не привязанная к состоянию view
}

#pragma mark - Методы VSMPLNewsFilterViewOutput

- (void)didTriggerViewReadyEvent {
	[self.view setupInitialState];
}

-(void)setModuleOutput:(id<VSMPLNewsFilterModuleOutput>)moduleOutput {
    self.output = moduleOutput;
    [self.output configureNewsFilterModuleView:(UIViewController*)self.view];
}

#pragma mark - Методы VSMPLNewsFilterInteractorOutput

@end
