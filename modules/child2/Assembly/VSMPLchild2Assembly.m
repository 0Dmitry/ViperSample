//
//  VSMPLchild2Assembly.m
//  ViperSample
//
//  Created by dmitry on 17/01/2018.
//  Copyright © 2018 dmitryklochkov. All rights reserved.
//

#import "VSMPLchild2Assembly.h"

#import "VSMPLchild2ViewController.h"
#import "VSMPLchild2Interactor.h"
#import "VSMPLchild2Presenter.h"
#import "VSMPLchild2Router.h"

#import <ViperMcFlurry/ViperMcFlurry.h>

@implementation VSMPLchild2Assembly

- (VSMPLchild2ViewController *)viewchild2 {
    return [TyphoonDefinition withClass:[VSMPLchild2ViewController class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(output)
                                                    with:[self presenterchild2]];
                              [definition injectProperty:@selector(moduleInput)
                                                    with:[self presenterchild2]];
                          }];
}

- (VSMPLchild2Interactor *)interactorchild2 {
    return [TyphoonDefinition withClass:[VSMPLchild2Interactor class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(output)
                                                    with:[self presenterchild2]];
                          }];
}

- (VSMPLchild2Presenter *)presenterchild2{
    return [TyphoonDefinition withClass:[VSMPLchild2Presenter class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(view)
                                                    with:[self viewchild2]];
                              [definition injectProperty:@selector(interactor)
                                                    with:[self interactorchild2]];
                              [definition injectProperty:@selector(router)
                                                    with:[self routerchild2]];
                          }];
}

- (VSMPLchild2Router *)routerchild2{
    return [TyphoonDefinition withClass:[VSMPLchild2Router class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(transitionHandler)
                                                    with:[self viewchild2]];
                          }];
}

@end
