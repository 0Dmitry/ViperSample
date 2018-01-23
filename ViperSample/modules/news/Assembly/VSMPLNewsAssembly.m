//
//  VSMPLNewsAssembly.m
//  ViperSample
//
//  Created by dmitry on 23/01/2018.
//  Copyright © 2018 dmitryklochkov. All rights reserved.
//

#import "VSMPLNewsAssembly.h"

#import "VSMPLNewsViewController.h"
#import "VSMPLNewsInteractor.h"
#import "VSMPLNewsPresenter.h"
#import "VSMPLNewsRouter.h"
#import "VSMPLNewsStoryboardFactory.h"

#import <ViperMcFlurry/ViperMcFlurry.h>

@interface VSMPLNewsAssembly ()

@property (nonatomic, weak) VSMPLNewsStoryboardFactory * storyboardFactory;

@end

@implementation VSMPLNewsAssembly

- (VSMPLNewsViewController *)viewNews {
    return [TyphoonDefinition withClass:[VSMPLNewsViewController class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(output)
                                                    with:[self presenterNews]];
                              [definition injectProperty:@selector(moduleInput)
                                                    with:[self presenterNews]];
                          }];
}

- (VSMPLNewsInteractor *)interactorNews {
    return [TyphoonDefinition withClass:[VSMPLNewsInteractor class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(output)
                                                    with:[self presenterNews]];
                          }];
}

- (VSMPLNewsPresenter *)presenterNews{
    return [TyphoonDefinition withClass:[VSMPLNewsPresenter class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(view)
                                                    with:[self viewNews]];
                              [definition injectProperty:@selector(interactor)
                                                    with:[self interactorNews]];
                              [definition injectProperty:@selector(router)
                                                    with:[self routerNews]];
                          }];
}

- (VSMPLNewsRouter *)routerNews{
    return [TyphoonDefinition withClass:[VSMPLNewsRouter class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(transitionHandler)
                                                    with:[self viewNews]];
                              [definition injectProperty:@selector(storyboardFactory) with:self.storyboardFactory];
                          }];
}

@end
