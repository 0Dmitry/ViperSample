//
//  VSMPLchild1ViewController.m
//  ViperSample
//
//  Created by dmitry on 17/01/2018.
//  Copyright © 2018 dmitryklochkov. All rights reserved.
//

#import "VSMPLchild1TableViewController.h"

#import "VSMPLchild1ViewOutput.h"
#import "VSMPLNews.h"
#import "VSMPLNewsTableDataSource.h"
#import "VSMPLNewsTableCellDecorator.h"

@implementation VSMPLchild1TableViewController

#pragma mark - Методы жизненного цикла

- (void)viewDidLoad {
	[super viewDidLoad];
	[self.output didTriggerViewReadyEvent];
}

#pragma mark - Методы VSMPLchild1ViewInput

- (void)setupInitialState {
	// В этом методе происходит настройка параметров view, зависящих от ее жизненого цикла (создание элементов, анимации и пр.)
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.tableDatasource newsCount];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"NewsTableCell" forIndexPath:indexPath];
    
    VSMPLNews * news = [self.tableDatasource getNewsForRow:indexPath.row];
    
    [self.tableCellDecorator decorateCell:cell withNews:news];
    
    return cell;
}

@end
