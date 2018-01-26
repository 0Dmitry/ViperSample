//
//  VSMPLchild1ViewController.h
//  ViperSample
//
//  Created by dmitry on 17/01/2018.
//  Copyright © 2018 dmitryklochkov. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "VSMPLNewsTableViewInput.h"

@protocol VSMPLNewsTableViewOutput;
@protocol VSMPLNewsTableDataSource;
@protocol VSMPLNewsTableCellDecorator;

@interface VSMPLNewsTableViewController : UITableViewController <VSMPLNewsTableViewInput>

@property (nonatomic, strong) id<VSMPLNewsTableViewOutput> output;
@property (nonatomic, strong) id<VSMPLNewsTableCellDecorator> tableCellDecorator;

@end
