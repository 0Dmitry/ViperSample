//
//  VSMPLchild1Presenter.m
//  ViperSample
//
//  Created by dmitry on 17/01/2018.
//  Copyright © 2018 dmitryklochkov. All rights reserved.
//

#import "VSMPLNewsTablePresenter.h"

#import "VSMPLNewsTableViewInput.h"
#import "VSMPLNewsTableInteractorInput.h"
#import "VSMPLNewsTableRouterInput.h"

@implementation VSMPLNewsTablePresenter

#pragma mark - Методы VSMPLchild1ModuleInput

- (void)configureModule {
    // Стартовая конфигурация модуля, не привязанная к состоянию view
}

#pragma mark - Методы VSMPLchild1ViewOutput

- (void)didTriggerViewReadyEvent {
    
	[self.view setupInitialState];
}

- (void)didTappedOnNewsTableCellWithRow:(NSInteger)row {
    id<VSMPLNews> news =  [_newsDatasource getNewsForRow:row];
    [self.output openNewsDetailsViewWithNewsId:news.newsId];
}


- (void)setModuleOutput:(id<VSMPLNewsTableModuleOutput>)moduleOutput {
    self.output = moduleOutput;
    _newsDatasource.filterSource = self.output;
    
    [moduleOutput configureNewsListModuleView:(UIViewController *)self.view];
}

#pragma mark - Методы VSMPLchild1InteractorOutput

- (void)newsFilterValuesDidChange {
    [self.view newsFilterValuesDidChange];
}


@synthesize tableDatasource;

- (id<VSMPLNewsTableDataSource>)tableDatasource {
    return _newsDatasource;
}



@end
