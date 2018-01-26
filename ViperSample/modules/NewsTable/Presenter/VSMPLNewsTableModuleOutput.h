//
//  VSMPLchild1ModuleOutput.h
//  ViperSample
//
//  Created by admin on 23/01/2018.
//  Copyright © 2018 Dmitry Klochkov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <ViperMcFlurry/ViperMcFlurry.h>
#import "VSMPLNewsListConfigurationProtocol.h"
#import "VSMPLNewsFilterSource.h"

@protocol VSMPLNewsTableModuleOutput <RamblerViperModuleOutput, VSMPLNewsListConfigurationProtocol, VSMPLNewsFilterSource>

-(void) openNewsDetailsViewWithNewsId:(NSInteger) newsId;

@end
