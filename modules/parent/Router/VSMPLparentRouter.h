//
//  VSMPLparentRouter.h
//  ViperSample
//
//  Created by dmitry on 17/01/2018.
//  Copyright © 2018 dmitryklochkov. All rights reserved.
//

#import "VSMPLparentRouterInput.h"

@protocol RamblerViperModuleTransitionHandlerProtocol;

@interface VSMPLparentRouter : NSObject <VSMPLparentRouterInput>

@property (nonatomic, weak) id<RamblerViperModuleTransitionHandlerProtocol> transitionHandler;

@end
