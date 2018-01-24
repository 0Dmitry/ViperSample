//
//  VSMPLchild1Presenter.h
//  ViperSample
//
//  Created by dmitry on 17/01/2018.
//  Copyright © 2018 dmitryklochkov. All rights reserved.
//

#import "VSMPLchild1ViewOutput.h"
#import "VSMPLchild1InteractorOutput.h"
#import "VSMPLchild1ModuleInput.h"
#import "VSMPLchild1ModuleOutput.h"
#import "VSMPLNewsDataSource.h"

@protocol VSMPLchild1ViewInput;
@protocol VSMPLchild1InteractorInput;
@protocol VSMPLchild1RouterInput;

@interface VSMPLchild1Presenter : NSObject <VSMPLchild1ModuleInput, VSMPLchild1ViewOutput, VSMPLchild1InteractorOutput>

@property (nonatomic, weak) id<VSMPLchild1ViewInput> view;
@property (nonatomic, strong) id<VSMPLchild1InteractorInput> interactor;
@property (nonatomic, strong) id<VSMPLchild1RouterInput> router;
@property (nonatomic, strong) id<VSMPLchild1ModuleOutput> output;
@property (nonatomic, strong) VSMPLNewsDataSource * newsDatasource;

@end
