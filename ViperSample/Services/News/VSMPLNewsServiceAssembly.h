//
//  VSMPLNewsServiceAssembly.h
//  ViperSample
//
//  Created by admin on 26/01/2018.
//  Copyright © 2018 Dmitry Klochkov. All rights reserved.
//

#import <Typhoon/Typhoon.h>
#import <RamblerTyphoonUtils/AssemblyCollector.h>

#import "VSMPLNewsManager.h"

@interface VSMPLNewsServiceAssembly : TyphoonAssembly <RamblerInitialAssembly>
-(VSMPLNewsManager *) newsManager;
@end
