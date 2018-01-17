//
//  VSMPLchild1ViewController.h
//  ViperSample
//
//  Created by dmitry on 17/01/2018.
//  Copyright © 2018 dmitryklochkov. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "VSMPLchild1ViewInput.h"

@protocol VSMPLchild1ViewOutput;

@interface VSMPLchild1ViewController : UIViewController <VSMPLchild1ViewInput>

@property (nonatomic, strong) id<VSMPLchild1ViewOutput> output;

@end
