//
//  VSMPLchild1Router.h
//  ViperSample
//
//  Created by dmitry on 17/01/2018.
//  Copyright © 2018 dmitryklochkov. All rights reserved.
//

#import "VSMPLchild1RouterInput.h"

@protocol RamblerViperModuleTransitionHandlerProtocol;

@interface VSMPLchild1Router : NSObject <VSMPLchild1RouterInput>

@property (nonatomic, weak) id<RamblerViperModuleTransitionHandlerProtocol> transitionHandler;

@end
