//
//  VSMPLDefaultNewsTableCellDecorator.m
//  ViperSample
//
//  Created by admin on 19/01/2018.
//  Copyright © 2018 Dmitry Klochkov. All rights reserved.
//

#import "VSMPLDefaultNewsTableCellDecorator.h"

@implementation VSMPLDefaultNewsTableCellDecorator

- (void)decorateCell:(UITableViewCell *)cell withNews:(id<VSMPLNews>)news {
    cell.textLabel.text = news.title;
}

@end
