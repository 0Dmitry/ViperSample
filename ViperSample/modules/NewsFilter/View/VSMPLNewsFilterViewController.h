//
//  VSMPLNewsFilterViewController.h
//  ViperSample
//
//  Created by dmitry on 22/01/2018.
//  Copyright © 2018 dmitryklochkov. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "VSMPLNewsFilterViewInput.h"

@protocol VSMPLNewsFilterViewOutput;

@interface VSMPLNewsFilterViewController : UIViewController <VSMPLNewsFilterViewInput>

@property (nonatomic, strong) id<VSMPLNewsFilterViewOutput> output;

@end
