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
#import "VSMPLNewsDataSource.h"
#import "VSMPLNewsTableCellDecorator.h"
#import "VSMPLDefaultNewsTableCellDecorator.h"

#import <ViperMcFlurry/ViperMcFlurry.h>

@implementation VSMPLchild1Assembly

- (VSMPLchild1TableViewController *)unreadNewsView {
    return [TyphoonDefinition withClass:[VSMPLchild1TableViewController class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(output)
                                                    with:[self presenterchild1]];
                              [definition injectProperty:@selector(moduleInput)
                                                    with:[self presenterchild1]];
                              [definition injectProperty:@selector(tableDatasource) with:[self unreadNewsDataSource]];
                              [definition injectProperty:@selector(tableCellDecorator) with:[self defaultNewsTableCellDecorator]];
                          }];
}

- (VSMPLchild1TableViewController *)readNewsView {
    return [TyphoonDefinition withClass:[VSMPLchild1TableViewController class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(output)
                                                    with:[self presenterchild1]];
                              [definition injectProperty:@selector(moduleInput)
                                                    with:[self presenterchild1]];
                              [definition injectProperty:@selector(tableDatasource) with:[self readNewsDataSource]];
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
                                                    with:[self unreadNewsView]];
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
                                                    with:[self unreadNewsView]];
                          }];
}

-(id<VSMPLNewsTableDataSource>) unreadNewsDataSource {
    return [TyphoonDefinition withClass:[VSMPLNewsDataSource class] configuration:^(TyphoonDefinition *definition) {
        [definition injectProperty:@selector(newsManager) with:[self newsManager]];
        
        VSMPLNewsFilter * filter = [[VSMPLNewsFilter alloc] initWithIsRead:@(NO)];
        [definition injectProperty:@selector(filter) with: filter];
    }];
}

-(id<VSMPLNewsTableDataSource>) readNewsDataSource {
    return [TyphoonDefinition withClass:[VSMPLNewsDataSource class] configuration:^(TyphoonDefinition *definition) {
        [definition injectProperty:@selector(newsManager) with:[self newsManager]];
        
        VSMPLNewsFilter * filter = [[VSMPLNewsFilter alloc] initWithIsRead:@(YES)];
        [definition injectProperty:@selector(filter) with: filter];
    }];
}

-(id<VSMPLNewsTableCellDecorator>) defaultNewsTableCellDecorator {
    return [TyphoonDefinition withClass:[VSMPLDefaultNewsTableCellDecorator class]];
}

-(VSMPLNewsManager *) newsManager {
    return [TyphoonDefinition withClass:[VSMPLNewsManager class] configuration:^(TyphoonDefinition *definition) {
        definition.scope = TyphoonScopeSingleton;
        
    }];
}

@end
