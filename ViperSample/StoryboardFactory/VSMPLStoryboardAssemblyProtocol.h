//
//  SBStoryboardAssemblyProtocol.h
//  SBTCalendarModule
//
//  Created by Pavel Nefedov on 27.06.17.
//  Copyright © 2017 Pavel Nefedov. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol VSMPLStoryboardAssemblyProtocol <NSObject>

@required
//- (UIStoryboard *) calendarStoryboard;
- (UIStoryboard *) newsFilterStoryboard;
- (UIStoryboard *) newsListStoryboard;
- (UIStoryboard *) newsDetailsStoryboard;

@end
