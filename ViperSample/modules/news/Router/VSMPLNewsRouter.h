//
//  VSMPLNewsRouter.h
//  ViperSample
//
//  Created by dmitry on 23/01/2018.
//  Copyright © 2018 dmitryklochkov. All rights reserved.
//

#import "VSMPLNewsRouterInput.h"
#import "VSMPLNewsStoryboardFactoryProtocol.h"

@protocol RamblerViperModuleTransitionHandlerProtocol;

@interface VSMPLNewsRouter : NSObject <VSMPLNewsRouterInput>

@property (nonatomic, weak) id<RamblerViperModuleTransitionHandlerProtocol> transitionHandler;
@property (nonatomic, weak) id<VSMPLNewsStoryboardFactoryProtocol> storyboardFactory;

@end
