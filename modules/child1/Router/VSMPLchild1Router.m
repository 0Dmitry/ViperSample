//
//  VSMPLchild1Router.m
//  ViperSample
//
//  Created by dmitry on 17/01/2018.
//  Copyright © 2018 dmitryklochkov. All rights reserved.
//

#import "VSMPLchild1Router.h"

#import <ViperMcFlurry/ViperMcFlurry.h>

@implementation VSMPLchild1Router

#pragma mark - Методы VSMPLchild1RouterInput


- (void)openParentView {
    [self.transitionHandler openModuleUsingSegue:@"child1ToParent"];
}
@end
