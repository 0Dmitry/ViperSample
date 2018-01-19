//
//  VSMPLchild2Router.h
//  ViperSample
//
//  Created by dmitry on 17/01/2018.
//  Copyright © 2018 dmitryklochkov. All rights reserved.
//

#import "VSMPLchild2RouterInput.h"

@protocol RamblerViperModuleTransitionHandlerProtocol;

@interface VSMPLchild2Router : NSObject <VSMPLchild2RouterInput>

@property (nonatomic, weak) id<RamblerViperModuleTransitionHandlerProtocol> transitionHandler;

@end
