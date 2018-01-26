//
//  SBStoryboardAssembly.m
//  SBTCalendarModule
//
//  Created by Pavel Nefedov on 27.06.17.
//  Copyright © 2017 Pavel Nefedov. All rights reserved.
//

#import "VSMPLStoryboardAssembly.h"
#import "VSMPLNewsViewController.h"
#import "VSMPLNewsFilterViewController.h"
#import "VSMPLNewsTableViewController.h"
#import "VSMPLNewsDetailsViewController.h"

static NSString * const kNewsKey = @"NewsStoryboard";
static NSString * const kNewsFilterKey = @"NewsFilterStoryboard";
static NSString * const kNewsListKey = @"News";
static NSString * const kNewsDetailsKey = @"NewsDetails";

@implementation VSMPLStoryboardAssembly

- (UIStoryboard *)newsStoryboard{
    return [TyphoonDefinition withClass:[TyphoonStoryboard class] configuration:^(TyphoonDefinition *definition) {
        [definition useInitializer:@selector(storyboardWithName:factory:bundle:)
                        parameters:^(TyphoonMethod *initializer) {
                            [initializer injectParameterWith:kNewsKey];
                            [initializer injectParameterWith:self];
                            [initializer injectParameterWith:[NSBundle bundleForClass:[VSMPLNewsViewController class]]];
                        }];
    }];
}

- (UIStoryboard *)newsFilterStoryboard{
    return [TyphoonDefinition withClass:[TyphoonStoryboard class] configuration:^(TyphoonDefinition *definition) {
        [definition useInitializer:@selector(storyboardWithName:factory:bundle:)
                        parameters:^(TyphoonMethod *initializer) {
                            [initializer injectParameterWith:kNewsFilterKey];
                            [initializer injectParameterWith:self];
                            NSBundle *bundle = [NSBundle bundleForClass:[VSMPLNewsFilterViewController class]];
                            [initializer injectParameterWith:bundle];
                        }];
    }];
}

- (UIStoryboard *)newsListStoryboard{
    return [TyphoonDefinition withClass:[TyphoonStoryboard class] configuration:^(TyphoonDefinition *definition) {
        [definition useInitializer:@selector(storyboardWithName:factory:bundle:)
                        parameters:^(TyphoonMethod *initializer) {
                            [initializer injectParameterWith:kNewsListKey];
                            [initializer injectParameterWith:self];
                            NSBundle *bundle = [NSBundle bundleForClass:[VSMPLNewsTableViewController class]];
                            [initializer injectParameterWith:bundle];
                        }];
    }];
}

- (UIStoryboard *)newsDetailsStoryboard{
    return [TyphoonDefinition withClass:[TyphoonStoryboard class] configuration:^(TyphoonDefinition *definition) {
        [definition useInitializer:@selector(storyboardWithName:factory:bundle:)
                        parameters:^(TyphoonMethod *initializer) {
                            [initializer injectParameterWith:kNewsDetailsKey];
                            [initializer injectParameterWith:self];
                            NSBundle *bundle = [NSBundle bundleForClass:[VSMPLNewsDetailsViewController class]];
                            [initializer injectParameterWith:bundle];
                        }];
    }];
}

@end

