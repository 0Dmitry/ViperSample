//
//  VSMPLNewsDetailsModuleInput.h
//  ViperSample
//
//  Created by dmitry on 25/01/2018.
//  Copyright © 2018 dmitryklochkov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <ViperMcFlurry/ViperMcFlurry.h>

@protocol VSMPLNewsDetailsModuleInput <RamblerViperModuleInput>


@property(nonatomic, assign) NSNumber * newsId;

/**
 @author dmitry

 Метод инициирует стартовую конфигурацию текущего модуля
 */
- (void)configureModule;


@end
