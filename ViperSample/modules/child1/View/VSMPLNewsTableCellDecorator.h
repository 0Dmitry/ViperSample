//
//  VSMPLNewsTableCellDecorator.h
//  ViperSample
//
//  Created by admin on 19/01/2018.
//  Copyright © 2018 Dmitry Klochkov. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "VSMPLNews.h"

@protocol VSMPLNewsTableCellDecorator<NSObject>

-(void) decorateCell:(UITableViewCell *) cell withNews:(VSMPLNews *) news;

@end
