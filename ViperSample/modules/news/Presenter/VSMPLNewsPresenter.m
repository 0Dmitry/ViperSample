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
    [self.router presentNewsListModule];
    
	[self.view setupInitialState];
}

#pragma mark - Методы VSMPLNewsInteractorOutput



- (void)configureNewsFilterModuleView:(UIViewController *)view {
    [self.view configureNewsFilterModuleView:view];
}

- (void)configureNewsListModuleView:(UIViewController *)view {
    [self.view configureNewsListModuleView:view];
}

-(id<VSMPLNewsFilterProtocol>)newsFilter {
    return self.newsFilterModule.filter;
}




#pragma mark - Методы VSMPLNewsFilterProtocol

@synthesize filter;

-(id<VSMPLNewsFilterProtocol>)filter {
    return newsFilterModule.filter;
}

-(void)newsFilterValuesDidChange {
    [self.newsListModule newsFilterValuesDidChange];
}

@end
