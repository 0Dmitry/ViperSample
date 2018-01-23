//
//  VSMPLNewsModuleInput.h
//  ViperSample
//
//  Created by dmitry on 23/01/2018.
//  Copyright © 2018 dmitryklochkov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <ViperMcFlurry/ViperMcFlurry.h>
#import "VSMPLNewsFilterModuleInput.h"
#import "VSMPLchild1ModuleInput.h"
#import "VSMPLNewsFilterModuleOutput.h"

@protocol VSMPLNewsModuleInput <RamblerViperModuleInput, VSMPLNewsFilterModuleOutput>


@property (nonatomic, weak) id<VSMPLNewsFilterModuleInput> newsFilterModule;
@property (nonatomic, weak) id<VSMPLchild1ModuleInput> newsListModule;

/**
 @author dmitry

 Метод инициирует стартовую конфигурацию текущего модуля
 */
- (void)configureModule;

@end
