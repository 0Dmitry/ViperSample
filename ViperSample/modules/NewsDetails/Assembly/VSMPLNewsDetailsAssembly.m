//
//  VSMPLNewsDetailsAssembly.m
//  ViperSample
//
//  Created by dmitry on 25/01/2018.
//  Copyright © 2018 dmitryklochkov. All rights reserved.
//

#import "VSMPLNewsDetailsAssembly.h"

#import "VSMPLNewsDetailsViewController.h"
#import "VSMPLNewsDetailsInteractor.h"
#import "VSMPLNewsDetailsPresenter.h"
#import "VSMPLNewsDetailsRouter.h"

#import <ViperMcFlurry/ViperMcFlurry.h>

@implementation VSMPLNewsDetailsAssembly

- (VSMPLNewsDetailsViewController *)viewNewsDetails {
    return [TyphoonDefinition withClass:[VSMPLNewsDetailsViewController class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(output)
                                                    with:[self presenterNewsDetails]];
                              [definition injectProperty:@selector(moduleInput)
                                                    with:[self presenterNewsDetails]];
                          }];
}

- (VSMPLNewsDetailsInteractor *)interactorNewsDetails {
    return [TyphoonDefinition withClass:[VSMPLNewsDetailsInteractor class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(output)
                                                    with:[self presenterNewsDetails]];
                              [definition injectProperty:@selector(newsManager) with:[self.serviceAssembly newsManager]];
                          }];
}

- (VSMPLNewsDetailsPresenter *)presenterNewsDetails{
    return [TyphoonDefinition withClass:[VSMPLNewsDetailsPresenter class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(view)
                                                    with:[self viewNewsDetails]];
                              [definition injectProperty:@selector(interactor)
                                                    with:[self interactorNewsDetails]];
                              [definition injectProperty:@selector(router)
                                                    with:[self routerNewsDetails]];
                          }];
}

- (VSMPLNewsDetailsRouter *)routerNewsDetails{
    return [TyphoonDefinition withClass:[VSMPLNewsDetailsRouter class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(transitionHandler)
                                                    with:[self viewNewsDetails]];
                          }];
}



@end
