//
//  VSMPLNewsDetailsViewOutput.h
//  ViperSample
//
//  Created by dmitry on 25/01/2018.
//  Copyright © 2018 dmitryklochkov. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol VSMPLNewsDetailsViewOutput <NSObject>

/**
 @author dmitry

 Метод сообщает презентеру о том, что view готова к работе
 */
- (void)didTriggerViewReadyEvent;

@end
