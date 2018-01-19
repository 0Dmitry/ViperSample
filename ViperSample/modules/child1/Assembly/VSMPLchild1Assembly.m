//
//  VSMPLchild1Assembly.m
//  ViperSample
//
//  Created by dmitry on 17/01/2018.
//  Copyright © 2018 dmitryklochkov. All rights reserved.
//

#import "VSMPLchild1Assembly.h"

#import "VSMPLchild1TableViewController.h"
#import "VSMPLchild1Interactor.h"
#import "VSMPLchild1Presenter.h"
#import "VSMPLchild1Router.h"
#import "VSMPLNewsTableDataSource.h"
#import "VSMPLNewsService.h"
#import "VSMPLNewsTableCellDecorator.h"
#import "VSMPLDefaultNewsTableCellDecorator.h"

#import <ViperMcFlurry/ViperMcFlurry.h>

@implementation VSMPLchild1Assembly

- (VSMPLchild1TableViewController *)viewchild1 {
    return [TyphoonDefinition withClass:[VSMPLchild1TableViewController class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(output)
                                                    with:[self presenterchild1]];
                              [definition injectProperty:@selector(moduleInput)
                                                    with:[self presenterchild1]];
                              [definition injectProperty:@selector(tableDatasource) with:[self newsDataSource]];
                              [definition injectProperty:@selector(tableCellDecorator) with:[self defaultNewsTableCellDecorator]];
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

-(id<VSMPLNewsTableDataSource>) newsDataSource {
    return [TyphoonDefinition withClass:[VSMPLNewsService class]];
}

-(id<VSMPLNewsTableCellDecorator>) defaultNewsTableCellDecorator {
    return [TyphoonDefinition withClass:[VSMPLDefaultNewsTableCellDecorator class]];
}

@end
