//
//  VSMPLchild1Assembly.m
//  ViperSample
//
//  Created by dmitry on 17/01/2018.
//  Copyright © 2018 dmitryklochkov. All rights reserved.
//

#import "VSMPLchild1Assembly.h"

#import "VSMPLchild1ViewController.h"
#import "VSMPLchild1Interactor.h"
#import "VSMPLchild1Presenter.h"
#import "VSMPLchild1Router.h"

#import <ViperMcFlurry/ViperMcFlurry.h>

@implementation VSMPLchild1Assembly

- (VSMPLchild1ViewController *)viewchild1 {
    return [TyphoonDefinition withClass:[VSMPLchild1ViewController class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(output)
                                                    with:[self presenterchild1]];
                              [definition injectProperty:@selector(moduleInput)
                                                    with:[self presenterchild1]];
                          }];
}

- (VSMPLchild1Interactor *)interactorchild1 {
    return [TyphoonDefinition withClass:[VSMPLchild1Interactor class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(output)
                                                    with:[self presenterchild1]];
                          }];
}

- (VSMPLchild1Presenter *)presenterchild1{
    return [TyphoonDefinition withClass:[VSMPLchild1Presenter class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(view)
                                                    with:[self viewchild1]];
                              [definition injectProperty:@selector(interactor)
                                                    with:[self interactorchild1]];
                              [definition injectProperty:@selector(router)
                                                    with:[self routerchild1]];
                          }];
}

- (VSMPLchild1Router *)routerchild1{
    return [TyphoonDefinition withClass:[VSMPLchild1Router class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(transitionHandler)
                                                    with:[self viewchild1]];
                          }];
}

@end
