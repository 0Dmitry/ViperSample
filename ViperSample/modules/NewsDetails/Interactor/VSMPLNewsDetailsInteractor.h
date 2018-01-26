//
//  VSMPLNewsDetailsInteractor.h
//  ViperSample
//
//  Created by dmitry on 25/01/2018.
//  Copyright © 2018 dmitryklochkov. All rights reserved.
//

#import "VSMPLNewsDetailsInteractorInput.h"
#import "VSMPLNewsManager.h"

@protocol VSMPLNewsDetailsInteractorOutput;

@interface VSMPLNewsDetailsInteractor : NSObject <VSMPLNewsDetailsInteractorInput>

@property (nonatomic, weak) id<VSMPLNewsDetailsInteractorOutput> output;

@property(nonatomic, strong) VSMPLNewsManager * newsManager;

@end
