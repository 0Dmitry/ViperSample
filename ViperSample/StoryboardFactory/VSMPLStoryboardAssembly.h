//
//  SBStoryboardAssembly.h
//  SBTCalendarModule
//
//  Created by Pavel Nefedov on 27.06.17.
//  Copyright © 2017 Pavel Nefedov. All rights reserved.
//

#import <Typhoon/Typhoon.h>
#import <RamblerTyphoonUtils/AssemblyCollector.h>
#import "VSMPLStoryboardAssemblyProtocol.h"

@interface VSMPLStoryboardAssembly : TyphoonAssembly <RamblerInitialAssembly, VSMPLStoryboardAssemblyProtocol>

@end
