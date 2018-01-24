//
//  VSMPLNewsFilterModuleInput.h
//  ViperSample
//
//  Created by dmitry on 22/01/2018.
//  Copyright © 2018 dmitryklochkov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <ViperMcFlurry/ViperMcFlurry.h>
#import "VSMPLNewsFilterSource.h"

@protocol VSMPLNewsFilterModuleInput <RamblerViperModuleInput, VSMPLNewsFilterSource>

/**
 @author dmitry

 Метод инициирует стартовую конфигурацию текущего модуля
 */
- (void)configureModule;

@end
