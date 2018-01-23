//
//  VSMPLNewsRouter.m
//  ViperSample
//
//  Created by dmitry on 23/01/2018.
//  Copyright © 2018 dmitryklochkov. All rights reserved.
//

#import "VSMPLNewsRouter.h"
#import "VSMPLNewsFilterModuleInput.h"
#import "VSMPLNewsModuleInput.h"
#import "VSMPLNewsFilterModuleOutput.h"
#import "VSMPLchild1ModuleInput.h"
#import "VSMPLchild1ModuleOutput.h"

#import <ViperMcFlurry/ViperMcFlurry.h>

@implementation VSMPLNewsRouter

#pragma mark - Методы VSMPLNewsRouterInput

- (void)presentNewsFilterModule {
    [[self.transitionHandler openModuleUsingFactory:self.storyboardFactory.newsFilterFactory withTransitionBlock:^(id<RamblerViperModuleTransitionHandlerProtocol> sourceModuleTransitionHandler, id<RamblerViperModuleTransitionHandlerProtocol> destinationModuleTransitionHandler) {
        //
    }] thenChainUsingBlock:^id<RamblerViperModuleOutput>(id<VSMPLNewsFilterModuleInput> moduleInput) {
        //настраиваем взаимосвязи между presenter модуля Calendar и модуля CalendarHeader
        id<VSMPLNewsModuleInput> currentModuleInput = (id<VSMPLNewsModuleInput>)self.transitionHandler.moduleInput;
        currentModuleInput.newsFilterModule = moduleInput;
        
        //return outPut вызывает метод  - (void)setModuleOutput:(id<RamblerViperModuleOutput>)moduleOutput
        id<VSMPLNewsFilterModuleOutput> outPut = (id<VSMPLNewsFilterModuleOutput>)self.transitionHandler.moduleInput;
        return outPut;
    }];
}

- (void)presentNewsListModule {
    [[self.transitionHandler openModuleUsingFactory:self.storyboardFactory.newsListFactory withTransitionBlock:^(id<RamblerViperModuleTransitionHandlerProtocol> sourceModuleTransitionHandler, id<RamblerViperModuleTransitionHandlerProtocol> destinationModuleTransitionHandler) {
        //
    }] thenChainUsingBlock:^id<RamblerViperModuleOutput>(id<VSMPLchild1ModuleInput> moduleInput) {
        //настраиваем взаимосвязи между presenter модуля Calendar и модуля CalendarGrid
        id<VSMPLNewsModuleInput> currentModuleInput = (id<VSMPLNewsModuleInput>)self.transitionHandler.moduleInput;
        currentModuleInput.newsListModule = moduleInput;
        
        //return outPut вызывает метод  - (void)setModuleOutput:(id<RamblerViperModuleOutput>)moduleOutput
        id<VSMPLchild1ModuleOutput> outPut = (id<VSMPLchild1ModuleOutput>)self.transitionHandler.moduleInput;
        return outPut;
    }];
}

@end
