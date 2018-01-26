//
//  VSMPLchild1Assembly.h
//  ViperSample
//
//  Created by dmitry on 17/01/2018.
//  Copyright © 2018 dmitryklochkov. All rights reserved.
//

#import <Typhoon/Typhoon.h>
#import <RamblerTyphoonUtils/AssemblyCollector.h>
#import "VSMPLNewsServiceAssembly.h"

/**
 @author dmitry

 child1 module
 */
@interface VSMPLNewsTableAssembly : TyphoonAssembly <RamblerInitialAssembly>

@property(nonatomic, strong) VSMPLNewsServiceAssembly * serviceAssembly;

@end
