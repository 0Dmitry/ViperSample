//
//  VSMPLNewsService.m
//  ViperSample
//
//  Created by admin on 19/01/2018.
//  Copyright © 2018 Dmitry Klochkov. All rights reserved.
//

#import "VSMPLNewsDataSource.h"
#import "VSMPLDefaultNews.h"

@implementation VSMPLNewsDataSource

- (id<VSMPLNews>)getNewsForRow:(NSInteger)row {
    return [_newsManager getNewsWithFilter:self.filterSource.filter andRow:row];
}

- (NSInteger)newsCount {
    return [_newsManager getNewsCountWithFilter:self.filterSource.filter];
}

@end
