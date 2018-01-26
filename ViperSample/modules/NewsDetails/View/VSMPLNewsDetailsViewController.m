//
//  VSMPLNewsDetailsViewController.m
//  ViperSample
//
//  Created by dmitry on 25/01/2018.
//  Copyright © 2018 dmitryklochkov. All rights reserved.
//

#import "VSMPLNewsDetailsViewController.h"

#import "VSMPLNewsDetailsViewOutput.h"

@implementation VSMPLNewsDetailsViewController {
    
    __weak IBOutlet UILabel *dateLabel;
    __weak IBOutlet UILabel *newsTitleLabel;
    __weak IBOutlet UITextView *newsTextView;
}

#pragma mark - Методы жизненного цикла

- (void)viewDidLoad {
	[super viewDidLoad];

	[self.output didTriggerViewReadyEvent];
}

#pragma mark - Методы VSMPLNewsDetailsViewInput

- (void)setupInitialState {
	// В этом методе происходит настройка параметров view, зависящих от ее жизненого цикла (создание элементов, анимации и пр.)
}

-(void)setNewsTitle:(NSString *)newsTitle {
    newsTitleLabel.text = newsTitle;
}

-(void)setNewsText:(NSString *)newsText {
    newsTextView.text = newsText;
}

- (void)setNewsDateTitle:(NSString *)newsDateTitle {
    dateLabel.text = newsDateTitle;
}

@end
