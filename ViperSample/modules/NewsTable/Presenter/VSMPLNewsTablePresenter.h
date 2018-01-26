//
//  VSMPLchild1Presenter.h
//  ViperSample
//
//  Created by dmitry on 17/01/2018.
//  Copyright © 2018 dmitryklochkov. All rights reserved.
//

#import "VSMPLNewsTableViewOutput.h"
#import "VSMPLNewsTableInteractorOutput.h"
#import "VSMPLNewsTableModuleInput.h"
#import "VSMPLNewsTableModuleOutput.h"
#import "VSMPLNewsDataSource.h"

@protocol VSMPLNewsTableViewInput;
@protocol VSMPLNewsTableInteractorInput;
@protocol VSMPLNewsTableRouterInput;

@interface VSMPLNewsTablePresenter : NSObject <VSMPLNewsTableModuleInput, VSMPLNewsTableViewOutput, VSMPLNewsTableInteractorOutput>

@property (nonatomic, weak) id<VSMPLNewsTableViewInput> view;
@property (nonatomic, strong) id<VSMPLNewsTableInteractorInput> interactor;
@property (nonatomic, strong) id<VSMPLNewsTableRouterInput> router;
@property (nonatomic, strong) id<VSMPLNewsTableModuleOutput> output;
@property (nonatomic, strong) VSMPLNewsDataSource * newsDatasource;

@end
