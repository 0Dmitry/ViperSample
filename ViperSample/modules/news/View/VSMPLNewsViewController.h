//
//  VSMPLNewsViewController.h
//  ViperSample
//
//  Created by dmitry on 23/01/2018.
//  Copyright © 2018 dmitryklochkov. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "VSMPLNewsViewInput.h"

@protocol VSMPLNewsViewOutput;

@interface VSMPLNewsViewController : UIViewController <VSMPLNewsViewInput>

@property (nonatomic, strong) id<VSMPLNewsViewOutput> output;

@end
