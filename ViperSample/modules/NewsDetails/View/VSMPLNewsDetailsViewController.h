//
//  VSMPLNewsDetailsViewController.h
//  ViperSample
//
//  Created by dmitry on 25/01/2018.
//  Copyright © 2018 dmitryklochkov. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "VSMPLNewsDetailsViewInput.h"

@protocol VSMPLNewsDetailsViewOutput;

@interface VSMPLNewsDetailsViewController : UIViewController <VSMPLNewsDetailsViewInput>

@property (nonatomic, strong) id<VSMPLNewsDetailsViewOutput> output;

@end
