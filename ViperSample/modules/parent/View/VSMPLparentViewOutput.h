//
//  VSMPLparentViewOutput.h
//  ViperSample
//
//  Created by dmitry on 17/01/2018.
//  Copyright © 2018 dmitryklochkov. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol VSMPLparentViewOutput <NSObject>

/**
 @author dmitry

 Метод сообщает презентеру о том, что view готова к работе
 */
- (void)didTriggerViewReadyEvent;

-(void) child1buttonTappedOnViewController: (UIViewController *) viewController;
-(void) child2buttonTappedOnViewController: (UIViewController *) viewController;

@end
