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
#import "VSMPLNewsTableModuleInput.h"
#import "VSMPLNewsTableModuleOutput.h"
#import "VSMPLNewsDetailsModuleInput.h"
#import "VSMPLNewsDetailsModuleOutput.h"

#import <ViperMcFlurry/ViperMcFlurry.h>

@implementation VSMPLNewsRouter

#pragma mark - Методы VSMPLNewsRouterInput

- (void)presentNewsFilterModule {
    [[self.transitionHandler openModuleUsingFactory:self.storyboardFactory.newsFilterFactory withTransitionBlock:^(id<RamblerViperModuleTransitionHandlerProtocol> sourceModuleTransitionHandler, id<RamblerViperModuleTransitionHandlerProtocol> destinationModuleTransitionHandler) {
        //
    }] thenChainUsingBlock:^id<RamblerViperModuleOutput>(id<VSMPLNewsFilterModuleInput> moduleInput) {
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
    }] thenChainUsingBlock:^id<RamblerViperModuleOutput>(id<VSMPLNewsTableModuleInput> moduleInput) {
        id<VSMPLNewsModuleInput> currentModuleInput = (id<VSMPLNewsModuleInput>)self.transitionHandler.moduleInput;
        currentModuleInput.newsListModule = moduleInput;
        
        //return outPut вызывает метод  - (void)setModuleOutput:(id<RamblerViperModuleOutput>)moduleOutput
        id<VSMPLNewsTableModuleOutput> outPut = (id<VSMPLNewsTableModuleOutput>)self.transitionHandler.moduleInput;
        return outPut;
    }];
}

-(void)openNewsDetailsViewWithNewsId:(NSInteger)newsId {
    [[self.transitionHandler openModuleUsingFactory:self.storyboardFactory.newsDetailsFactory withTransitionBlock:^(id<RamblerViperModuleTransitionHandlerProtocol> sourceModuleTransitionHandler, id<RamblerViperModuleTransitionHandlerProtocol> destinationModuleTransitionHandler) {
        //
    }] thenChainUsingBlock:^id<RamblerViperModuleOutput>(id<VSMPLNewsDetailsModuleInput> moduleInput) {
        //id<VSMPLNewsModuleInput> currentModuleInput = (id<VSMPLNewsModuleInput>)self.transitionHandler.moduleInput;
        //currentModuleInput.newsListModule = moduleInput;
        
        moduleInput.newsId = @(newsId);
        
        //return outPut вызывает метод  - (void)setModuleOutput:(id<RamblerViperModuleOutput>)moduleOutput
        id<VSMPLNewsDetailsModuleOutput> outPut = (id<VSMPLNewsDetailsModuleOutput>)self.transitionHandler.moduleInput;
        return outPut;
    }];
}

@end
