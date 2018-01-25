//
//  SBCalendarStoryboardFactory.m
//  SBTCalendarModule
//
//  Created by Pavel Nefedov on 27.06.17.
//  Copyright © 2017 Pavel Nefedov. All rights reserved.
//

#import "VSMPLNewsStoryboardFactory.h"
#import <ViperMcFlurry/ViperMcFlurry.h>
#import "VSMPLStoryboardAssembly.h"


static NSString *const kNewsFilterRestorationId = @"NewsFilterStoryboard";
static NSString *const kNewsListRestorationId = @"News";

@interface VSMPLNewsStoryboardFactory ()

@property (nonatomic, strong) VSMPLStoryboardAssembly * storyboardAssembly;

@end

@implementation VSMPLNewsStoryboardFactory

- (RamblerViperModuleFactory*)newsFilterFactory {
    return [TyphoonDefinition withClass:[RamblerViperModuleFactory class] configuration:^(TyphoonDefinition *definition) {
        [definition useInitializer:@selector(initWithStoryboard:andRestorationId:) parameters:^(TyphoonMethod *initializer) {
            [initializer injectParameterWith:[self.storyboardAssembly newsFilterStoryboard]];
            [initializer injectParameterWith:kNewsFilterRestorationId];
        }];
    }];
}

- (RamblerViperModuleFactory *)newsListFactory {
    return [TyphoonDefinition withClass:[RamblerViperModuleFactory class] configuration:^(TyphoonDefinition *definition) {
        [definition useInitializer:@selector(initWithStoryboard:andRestorationId:) parameters:^(TyphoonMethod *initializer) {
            [initializer injectParameterWith:[self.storyboardAssembly newsListStoryboard]];
            [initializer injectParameterWith:kNewsListRestorationId];
        }];
    }];
}

@end
