//
//  VSMPLNewsDetailsRouter.h
//  ViperSample
//
//  Created by dmitry on 25/01/2018.
//  Copyright © 2018 dmitryklochkov. All rights reserved.
//

#import "VSMPLNewsDetailsRouterInput.h"

@protocol RamblerViperModuleTransitionHandlerProtocol;

@interface VSMPLNewsDetailsRouter : NSObject <VSMPLNewsDetailsRouterInput>

@property (nonatomic, weak) id<RamblerViperModuleTransitionHandlerProtocol> transitionHandler;

@end
