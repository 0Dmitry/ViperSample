//
//  SBCalendarStoryboardFactoryProtocol.h
//  SBTCalendarModule
//
//  Created by Pavel Nefedov on 27.06.17.
//  Copyright © 2017 Pavel Nefedov. All rights reserved.
//

#import <Foundation/Foundation.h>

@class RamblerViperModuleFactory;

@protocol VSMPLNewsStoryboardFactoryProtocol <NSObject>

@required
- (RamblerViperModuleFactory *) newsFilterFactory;
- (RamblerViperModuleFactory *) newsListFactory;
- (RamblerViperModuleFactory *) newsDetailsFactory;

@end
