//
//  VSMPLparentViewController.h
//  ViperSample
//
//  Created by dmitry on 17/01/2018.
//  Copyright © 2018 dmitryklochkov. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "VSMPLparentViewInput.h"

@protocol VSMPLparentViewOutput;

@interface VSMPLparentViewController : UIViewController <VSMPLparentViewInput>

@property (nonatomic, strong) id<VSMPLparentViewOutput> output;

@end
