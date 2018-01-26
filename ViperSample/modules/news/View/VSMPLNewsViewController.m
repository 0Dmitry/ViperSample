//
//  VSMPLNewsViewController.m
//  ViperSample
//
//  Created by dmitry on 23/01/2018.
//  Copyright © 2018 dmitryklochkov. All rights reserved.
//

#import "VSMPLNewsViewController.h"

#import "VSMPLNewsViewOutput.h"

static CGFloat const kNewsFilterModuleHeight = 200.;

@interface VSMPLNewsViewController () <VSMPLNewsViewInput>

@property (nonatomic, weak) UIView * newsFilterView;
@property (nonatomic, weak) UIView * newsListView;

@end

@implementation VSMPLNewsViewController

#pragma mark - Методы жизненного цикла

- (void)viewDidLoad {
	[super viewDidLoad];

	[self.output didTriggerViewReadyEvent];
}

#pragma mark - Методы VSMPLNewsViewInput

- (void)setupInitialState {
	// В этом методе происходит настройка параметров view, зависящих от ее жизненого цикла (создание элементов, анимации и пр.)
}


- (void)configureNewsFilterModuleView:(UIViewController *)view {
    view.view.translatesAutoresizingMaskIntoConstraints = NO;
    self.newsFilterView = view.view;
    
    [self addChildViewController:view];
    [self.view addSubview:view.view];
    
    
    self.view.backgroundColor = UIColor.greenColor;
    
    [[self.newsFilterView.topAnchor constraintEqualToAnchor:self.view.topAnchor] setActive:YES];
    [[self.newsFilterView.leftAnchor constraintEqualToAnchor:self.view.leftAnchor] setActive:YES];
    [[self.newsFilterView.rightAnchor constraintEqualToAnchor:self.view.rightAnchor] setActive:YES];
    [[self.newsFilterView.heightAnchor constraintEqualToConstant: kNewsFilterModuleHeight] setActive:YES];
    
    [view didMoveToParentViewController:self];
}

- (void)configureNewsListModuleView:(UIViewController *)view {
    view.view.translatesAutoresizingMaskIntoConstraints = NO;
    self.newsListView = view.view;
    [self addChildViewController:view];
    [self.view addSubview:view.view];
    
    [[self.newsListView.topAnchor constraintEqualToAnchor:self.view.topAnchor constant:kNewsFilterModuleHeight] setActive:YES];
    [[self.newsListView.leftAnchor constraintEqualToAnchor:self.view.leftAnchor] setActive:YES];
    [[self.newsListView.rightAnchor constraintEqualToAnchor:self.view.rightAnchor] setActive:YES];
    [[self.newsListView.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor] setActive:YES];
    
    [view didMoveToParentViewController:self];
}

-(void)configureNewsDetailsModuleView:(UIViewController *)view {
    [self.navigationController pushViewController:view animated:true];
}

@end
