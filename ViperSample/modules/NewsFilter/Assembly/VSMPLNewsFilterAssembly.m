//
//  VSMPLNewsFilterAssembly.m
//  ViperSample
//
//  Created by dmitry on 22/01/2018.
//  Copyright © 2018 dmitryklochkov. All rights reserved.
//

#import "VSMPLNewsFilterAssembly.h"

#import "VSMPLNewsFilterViewController.h"
#import "VSMPLNewsFilterInteractor.h"
#import "VSMPLNewsFilterPresenter.h"
#import "VSMPLNewsFilterRouter.h"

#import <ViperMcFlurry/ViperMcFlurry.h>

@implementation VSMPLNewsFilterAssembly

- (VSMPLNewsFilterViewController *)viewNewsFilter {
    return [TyphoonDefinition withClass:[VSMPLNewsFilterViewController class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(output)
                                                    with:[self presenterNewsFilter]];
                              [definition injectProperty:@selector(moduleInput)
                                                    with:[self presenterNewsFilter]];
                          }];
}

- (VSMPLNewsFilterInteractor *)interactorNewsFilter {
    return [TyphoonDefinition withClass:[VSMPLNewsFilterInteractor class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(output)
                                                    with:[self presenterNewsFilter]];
                          }];
}

- (VSMPLNewsFilterPresenter *)presenterNewsFilter{
    return [TyphoonDefinition withClass:[VSMPLNewsFilterPresenter class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(view)
                                                    with:[self viewNewsFilter]];
                              [definition injectProperty:@selector(interactor)
                                                    with:[self interactorNewsFilter]];
                              [definition injectProperty:@selector(router)
                                                    with:[self routerNewsFilter]];
                          }];
}

- (VSMPLNewsFilterRouter *)routerNewsFilter{
    return [TyphoonDefinition withClass:[VSMPLNewsFilterRouter class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(transitionHandler)
                                                    with:[self viewNewsFilter]];
                          }];
}

@end
