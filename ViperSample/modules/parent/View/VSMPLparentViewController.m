//
//  VSMPLparentViewController.m
//  ViperSample
//
//  Created by dmitry on 17/01/2018.
//  Copyright © 2018 dmitryklochkov. All rights reserved.
//

#import "VSMPLparentViewController.h"

#import "VSMPLparentViewOutput.h"

@implementation VSMPLparentViewController

#pragma mark - Методы жизненного цикла

- (void)viewDidLoad {
	[super viewDidLoad];

	[self.output didTriggerViewReadyEvent];
}

#pragma mark - Методы VSMPLparentViewInput

- (void)setupInitialState {
	// В этом методе происходит настройка параметров view, зависящих от ее жизненого цикла (создание элементов, анимации и пр.)
}


- (IBAction)child1ButtonTapped:(id)sender {
    [self.output child1buttonTappedOnViewController:self];
}

- (IBAction)child2ButtonTapped:(id)sender {
    [self.output child2buttonTappedOnViewController:self];
}


@end
