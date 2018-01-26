//
//  VSMPLNewsRouterInput.h
//  ViperSample
//
//  Created by dmitry on 23/01/2018.
//  Copyright © 2018 dmitryklochkov. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol VSMPLNewsRouterInput <NSObject>

- (void)presentNewsFilterModule;
- (void)presentNewsListModule;
- (void)openNewsDetailsViewWithNewsId:(NSInteger) newsId;

@end
