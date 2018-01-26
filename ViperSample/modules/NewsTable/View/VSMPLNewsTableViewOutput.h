//
//  VSMPLchild1ViewOutput.h
//  ViperSample
//
//  Created by dmitry on 17/01/2018.
//  Copyright © 2018 dmitryklochkov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "VSMPLNewsTableDataSource.h"

@protocol VSMPLNewsTableViewOutput <NSObject>

@property(nonatomic,weak) id<VSMPLNewsTableDataSource> tableDatasource;

/**
 @author dmitry

 Метод сообщает презентеру о том, что view готова к работе
 */
- (void)didTriggerViewReadyEvent;

- (void) backButtonTapped;

- (void) didTappedOnNewsTableCellWithRow: (NSInteger) row;

@end
