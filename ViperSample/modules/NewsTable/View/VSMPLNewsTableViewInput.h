//
//  VSMPLchild1ViewInput.h
//  ViperSample
//
//  Created by dmitry on 17/01/2018.
//  Copyright © 2018 dmitryklochkov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "VSMPLNewsFilterDelegate.h"
#import "VSMPLNewsDataSource.h"
#import "VSMPLNewsTableDataSource.h"

@protocol VSMPLNewsTableViewInput <NSObject, VSMPLNewsFilterDelegate>


/**
 @author dmitry

 Метод настраивает начальный стейт view
 */
- (void)setupInitialState;

-(void) setEditing:(BOOL) editing;

@end
