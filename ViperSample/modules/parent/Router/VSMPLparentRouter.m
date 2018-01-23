//
//  VSMPLparentRouter.m
//  ViperSample
//
//  Created by dmitry on 17/01/2018.
//  Copyright © 2018 dmitryklochkov. All rights reserved.
//

#import "VSMPLparentRouter.h"

#import <ViperMcFlurry/ViperMcFlurry.h>
#import <UIKit/UIKit.h>

@implementation VSMPLparentRouter

#pragma mark - Методы VSMPLparentRouterInput




//- (void)openChild1ViewFromParentViewController:(UIViewController *)parentViewController {
//    UIViewController * viewController = [[UIStoryboard storyboardWithName:@"UnreadNews" bundle:nil] instantiateInitialViewController];
//    [parentViewController.navigationController pushViewController:viewController animated:YES];
//}

- (void)openChild1ViewFromParentViewController:(UIViewController *)parentViewController {
    UIViewController * viewController = [[UIStoryboard storyboardWithName:@"NewsStoryboard" bundle:nil] instantiateInitialViewController];
    
    [parentViewController.navigationController pushViewController:viewController animated:YES];
}

- (void)openChild2ViewFromParentViewController:(UIViewController *)parentViewController {
    UIViewController * viewController = [[UIStoryboard storyboardWithName:@"ReadNews" bundle:nil] instantiateInitialViewController];
    [parentViewController.navigationController pushViewController:viewController animated:YES];
}

@end
