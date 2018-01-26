//
//  VSMPLNewsListConfigurationProtocol.h
//  ViperSample
//
//  Created by admin on 23/01/2018.
//  Copyright © 2018 Dmitry Klochkov. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol VSMPLNewsListConfigurationProtocol <NSObject>

@required
- (void)configureNewsListModuleView:(UIViewController*)view;

@end

