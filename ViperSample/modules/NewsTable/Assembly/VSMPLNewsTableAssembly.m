//
//  VSMPLchild1Assembly.m
//  ViperSample
//
//  Created by dmitry on 17/01/2018.
//  Copyright © 2018 dmitryklochkov. All rights reserved.
//

#import "VSMPLNewsTableAssembly.h"

#import "VSMPLNewsTableViewController.h"
#import "VSMPLNewsTableInteractor.h"
#import "VSMPLNewsTablePresenter.h"
#import "VSMPLNewsTableRouter.h"
#import "VSMPLNewsTableDataSource.h"
#import "VSMPLNewsDataSource.h"
#import "VSMPLNewsTableCellDecorator.h"
#import "VSMPLDefaultNewsTableCellDecorator.h"

#import <ViperMcFlurry/ViperMcFlurry.h>

@implementation VSMPLNewsTableAssembly

- (VSMPLNewsTableViewController *)newsView {
    return [TyphoonDefinition withClass:[VSMPLNewsTableViewController class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(output)
                                                    with:[self presenterchild1]];
                              [definition injectProperty:@selector(moduleInput)
                                                    with:[self presenterchild1]];
                              [definition injectProperty:@selector(tableCellDecorator) with:[self defaultNewsTableCellDecorator]];
                          }];
}


- (VSMPLNewsTableInteractor *)interactorchild1 {
    return [TyphoonDefinition withClass:[VSMPLNewsTableInteractor class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(output)
                                                    with:[self presenterchild1]];
                          }];
}

- (VSMPLNewsTablePresenter *)presenterchild1{
    return [TyphoonDefinition withClass:[VSMPLNewsTablePresenter class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(view)
                                                    with:[self newsView]];
                              [definition injectProperty:@selector(interactor)
                                                    with:[self interactorchild1]];
                              [definition injectProperty:@selector(newsDatasource) with:[self newsDataSource]];
                              [definition injectProperty:@selector(router)
                                                    with:[self routerchild1]];
                          }];
}

- (VSMPLNewsTableRouter *)routerchild1{
    return [TyphoonDefinition withClass:[VSMPLNewsTableRouter class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(transitionHandler)
                                                    with:[self newsView]];
                          }];
}

-(id<VSMPLNewsTableDataSource>) newsDataSource {
    return [TyphoonDefinition withClass:[VSMPLNewsDataSource class] configuration:^(TyphoonDefinition *definition) {
        [definition injectProperty:@selector(newsManager) with:[self.serviceAssembly newsManager]];
    }];
}


-(id<VSMPLNewsTableCellDecorator>) defaultNewsTableCellDecorator {
    return [TyphoonDefinition withClass:[VSMPLDefaultNewsTableCellDecorator class]];
}



@end
