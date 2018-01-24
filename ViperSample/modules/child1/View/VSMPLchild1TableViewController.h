//
//  VSMPLchild1ViewController.h
//  ViperSample
//
//  Created by dmitry on 17/01/2018.
//  Copyright © 2018 dmitryklochkov. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "VSMPLchild1ViewInput.h"

@protocol VSMPLchild1ViewOutput;
@protocol VSMPLNewsTableDataSource;
@protocol VSMPLNewsTableCellDecorator;

@interface VSMPLchild1TableViewController : UITableViewController <VSMPLchild1ViewInput>

@property (nonatomic, strong) id<VSMPLchild1ViewOutput> output;
@property (nonatomic, strong) id<VSMPLNewsTableCellDecorator> tableCellDecorator;

@end
