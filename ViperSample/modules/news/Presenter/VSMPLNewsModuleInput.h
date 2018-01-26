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
#import "VSMPLNewsTableModuleInput.h"
#import "VSMPLNewsFilterModuleOutput.h"
#import "VSMPLNewsTableModuleOutput.h"
#import "VSMPLNewsFilterSource.h"
#import "VSMPLNewsFilterDelegate.h"
#import "VSMPLNewsDetailsModuleOutput.h"

@protocol VSMPLNewsModuleInput <RamblerViperModuleInput, VSMPLNewsFilterModuleOutput, VSMPLNewsTableModuleOutput, VSMPLNewsFilterSource, VSMPLNewsFilterDelegate, VSMPLNewsDetailsModuleOutput>


@property (nonatomic, weak) id<VSMPLNewsFilterModuleInput> newsFilterModule;
@property (nonatomic, weak) id<VSMPLNewsTableModuleInput> newsListModule;

/**
 @author dmitry

 Метод инициирует стартовую конфигурацию текущего модуля
 */
- (void)configureModule;

@end
