//
//  VSMPLNewsTableDataSource.h
//  ViperSample
//
//  Created by admin on 19/01/2018.
//  Copyright © 2018 Dmitry Klochkov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "VSMPLNews.h"


@protocol VSMPLNewsTableDataSource <NSObject>
- (NSInteger) newsCount;
- (id<VSMPLNews>) getNewsForRow:(NSInteger)row;
@end
