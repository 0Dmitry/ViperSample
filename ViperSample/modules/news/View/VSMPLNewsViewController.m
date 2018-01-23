//
//  VSMPLNewsViewController.m
//  ViperSample
//
//  Created by dmitry on 23/01/2018.
//  Copyright © 2018 dmitryklochkov. All rights reserved.
//

#import "VSMPLNewsViewController.h"

#import "VSMPLNewsViewOutput.h"

static CGFloat const kNewsFilterModuleHeight = 100.;

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
    
    [self.newsFilterView.topAnchor constraintEqualToAnchor:self.view.topAnchor constant:kNewsFilterModuleHeight];
    [self.newsFilterView.leftAnchor constraintEqualToAnchor:self.view.leftAnchor];
    [self.newsFilterView.rightAnchor constraintEqualToAnchor:self.view.rightAnchor];
    [self.newsFilterView.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor];
    
//    NSDictionary * views = @{@"grid": self.calendarGridView, @"header": self.calendarHeaderView};
//    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[grid]|" options:0 metrics:nil views:views]];
//    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:[header][grid]|" options:0 metrics:nil views:views]];
    [view didMoveToParentViewController:self];
}

@end
