//
//  VSMPLNewsDetailsViewConfigurationProtocol.h
//  ViperSample
//
//  Created by admin on 26/01/2018.
//  Copyright © 2018 Dmitry Klochkov. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol VSMPLNewsDetailsViewConfigurationProtocol <NSObject>

@required
- (void)configureNewsDetailsModuleView:(UIViewController*)view;

@end
