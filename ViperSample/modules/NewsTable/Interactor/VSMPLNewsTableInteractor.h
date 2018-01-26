//
//  VSMPLchild1Interactor.h
//  ViperSample
//
//  Created by dmitry on 17/01/2018.
//  Copyright © 2018 dmitryklochkov. All rights reserved.
//

#import "VSMPLNewsTableInteractorInput.h"

@protocol VSMPLNewsTableInteractorOutput;

@interface VSMPLNewsTableInteractor : NSObject <VSMPLNewsTableInteractorInput>

@property (nonatomic, weak) id<VSMPLNewsTableInteractorOutput> output;

@end
