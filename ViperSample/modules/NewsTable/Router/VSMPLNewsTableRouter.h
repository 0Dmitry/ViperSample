//
//  VSMPLchild1Router.h
//  ViperSample
//
//  Created by dmitry on 17/01/2018.
//  Copyright © 2018 dmitryklochkov. All rights reserved.
//

#import "VSMPLNewsTableRouterInput.h"

@protocol RamblerViperModuleTransitionHandlerProtocol;

@interface VSMPLNewsTableRouter : NSObject <VSMPLNewsTableRouterInput>

@property (nonatomic, weak) id<RamblerViperModuleTransitionHandlerProtocol> transitionHandler;

@end
