//
//  VSMPLNewsFilterViewOutput.h
//  ViperSample
//
//  Created by dmitry on 22/01/2018.
//  Copyright © 2018 dmitryklochkov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "VSMPLNewsFilterDelegate.h"

@protocol VSMPLNewsFilterViewOutput <NSObject, VSMPLNewsFilterDelegate>

/**
 @author dmitry

 Метод сообщает презентеру о том, что view готова к работе
 */
- (void)didTriggerViewReadyEvent;


@end
