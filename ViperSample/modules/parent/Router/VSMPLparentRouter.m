//
//  VSMPLparentRouter.m
//  ViperSample
//
//  Created by dmitry on 17/01/2018.
//  Copyright © 2018 dmitryklochkov. All rights reserved.
//

#import "VSMPLparentRouter.h"

#import <ViperMcFlurry/ViperMcFlurry.h>

@implementation VSMPLparentRouter

#pragma mark - Методы VSMPLparentRouterInput


-(void)openChild1View {
    [self.transitionHandler openModuleUsingSegue:@"parentToChild1"];
}

-(void)openChild2View {
     [self.transitionHandler openModuleUsingSegue:@"parentToChild2"];
}

@end
