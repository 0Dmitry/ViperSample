//
//  VSMPLNewsService.h
//  ViperSample
//
//  Created by admin on 19/01/2018.
//  Copyright © 2018 Dmitry Klochkov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "VSMPLNewsTableDataSource.h"
#import "VSMPLNewsManager.h"
#import "VSMPLNewsFilter.h"

@interface VSMPLNewsDataSource : NSObject<VSMPLNewsTableDataSource>

@property(nonatomic, strong) VSMPLNewsManager * newsManager;
@property(nonatomic, strong) VSMPLNewsFilter * filter;

@end
