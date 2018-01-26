//
//  VSMPLNewsDetailsAssembly.h
//  ViperSample
//
//  Created by dmitry on 25/01/2018.
//  Copyright © 2018 dmitryklochkov. All rights reserved.
//

#import <Typhoon/Typhoon.h>
#import <RamblerTyphoonUtils/AssemblyCollector.h>
#import "VSMPLNewsServiceAssembly.h"

/**
 @author dmitry

 NewsDetails module
 */
@interface VSMPLNewsDetailsAssembly : TyphoonAssembly <RamblerInitialAssembly>

@property(nonatomic, strong) VSMPLNewsServiceAssembly * serviceAssembly;

@end
