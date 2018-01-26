//
//  VSMPLNewsServiceAssembly.m
//  ViperSample
//
//  Created by admin on 26/01/2018.
//  Copyright © 2018 Dmitry Klochkov. All rights reserved.
//

#import "VSMPLNewsServiceAssembly.h"


@implementation VSMPLNewsServiceAssembly

-(VSMPLNewsManager *) newsManager {
    return [TyphoonDefinition withClass:[VSMPLNewsManager class] configuration:^(TyphoonDefinition *definition) {
        definition.scope = TyphoonScopeSingleton;
        
    }];
}

@end
