//
//  VSMPLNewsFilterRouter.h
//  ViperSample
//
//  Created by dmitry on 22/01/2018.
//  Copyright © 2018 dmitryklochkov. All rights reserved.
//

#import "VSMPLNewsFilterRouterInput.h"

@protocol RamblerViperModuleTransitionHandlerProtocol;

@interface VSMPLNewsFilterRouter : NSObject <VSMPLNewsFilterRouterInput>

@property (nonatomic, weak) id<RamblerViperModuleTransitionHandlerProtocol> transitionHandler;

@end
