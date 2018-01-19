//
//  VSMPLchild2Router.m
//  ViperSample
//
//  Created by dmitry on 17/01/2018.
//  Copyright © 2018 dmitryklochkov. All rights reserved.
//

#import "VSMPLchild2Router.h"

#import <ViperMcFlurry/ViperMcFlurry.h>

@implementation VSMPLchild2Router

#pragma mark - Методы VSMPLchild2RouterInput

- (void)openParentView {
    [self.transitionHandler openModuleUsingSegue:@"child2ToParent"];
}

@end
