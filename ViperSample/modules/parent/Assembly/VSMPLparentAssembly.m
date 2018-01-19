//
//  VSMPLparentAssembly.m
//  ViperSample
//
//  Created by dmitry on 17/01/2018.
//  Copyright © 2018 dmitryklochkov. All rights reserved.
//

#import "VSMPLparentAssembly.h"

#import "VSMPLparentViewController.h"
#import "VSMPLparentInteractor.h"
#import "VSMPLparentPresenter.h"
#import "VSMPLparentRouter.h"

#import <ViperMcFlurry/ViperMcFlurry.h>

@implementation VSMPLparentAssembly

- (VSMPLparentViewController *)viewparent {
    return [TyphoonDefinition withClass:[VSMPLparentViewController class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(output)
                                                    with:[self presenterparent]];
                              [definition injectProperty:@selector(moduleInput)
                                                    with:[self presenterparent]];
                          }];
}

- (VSMPLparentInteractor *)interactorparent {
    return [TyphoonDefinition withClass:[VSMPLparentInteractor class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(output)
                                                    with:[self presenterparent]];
                          }];
}

- (VSMPLparentPresenter *)presenterparent{
    return [TyphoonDefinition withClass:[VSMPLparentPresenter class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(view)
                                                    with:[self viewparent]];
                              [definition injectProperty:@selector(interactor)
                                                    with:[self interactorparent]];
                              [definition injectProperty:@selector(router)
                                                    with:[self routerparent]];
                          }];
}

- (VSMPLparentRouter *)routerparent{
    return [TyphoonDefinition withClass:[VSMPLparentRouter class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(transitionHandler)
                                                    with:[self viewparent]];
                          }];
}

@end
