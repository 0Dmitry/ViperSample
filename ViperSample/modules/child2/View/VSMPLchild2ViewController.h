//
//  VSMPLchild2ViewController.h
//  ViperSample
//
//  Created by dmitry on 17/01/2018.
//  Copyright © 2018 dmitryklochkov. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "VSMPLchild2ViewInput.h"

@protocol VSMPLchild2ViewOutput;

@interface VSMPLchild2ViewController : UIViewController <VSMPLchild2ViewInput>

@property (nonatomic, strong) id<VSMPLchild2ViewOutput> output;

@end
