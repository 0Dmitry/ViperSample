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

-(void) child1buttonTappedOnViewController: (UIViewController *) viewController {
    [self.router openChild1ViewFromParentViewController: viewController];
}

-(void) child2buttonTappedOnViewController: (UIViewController *) viewController {
    [self.router openChild2ViewFromParentViewController:viewController];
}

#pragma mark - Методы VSMPLparentInteractorOutput


@end
