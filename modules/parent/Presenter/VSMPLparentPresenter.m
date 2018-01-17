//
//  VSMPLparentPresenter.m
//  ViperSample
//
//  Created by dmitry on 17/01/2018.
//  Copyright © 2018 dmitryklochkov. All rights reserved.
//

#import "VSMPLparentPresenter.h"

#import "VSMPLparentViewInput.h"
#import "VSMPLparentInteractorInput.h"
#import "VSMPLparentRouterInput.h"

@implementation VSMPLparentPresenter

#pragma mark - Методы VSMPLparentModuleInput

- (void)configureModule {
    // Стартовая конфигурация модуля, не привязанная к состоянию view
}

#pragma mark - Методы VSMPLparentViewOutput

- (void)didTriggerViewReadyEvent {
	[self.view setupInitialState];
}

-(void)child1buttonTapped {
    [self.router openChild1View];
}

-(void)child2buttonTapped {
    [self.router openChild2View];
}

#pragma mark - Методы VSMPLparentInteractorOutput

@end
