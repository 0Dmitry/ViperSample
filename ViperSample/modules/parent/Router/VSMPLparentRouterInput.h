//
//  VSMPLparentRouterInput.h
//  ViperSample
//
//  Created by dmitry on 17/01/2018.
//  Copyright © 2018 dmitryklochkov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol VSMPLparentRouterInput <NSObject>

-(void) openChild1ViewFromParentViewController:(UIViewController *) parentViewController;
-(void) openChild2ViewFromParentViewController:(UIViewController *) parentViewController;

@end
