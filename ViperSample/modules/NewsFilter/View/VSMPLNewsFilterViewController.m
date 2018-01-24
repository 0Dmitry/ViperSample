//
//  VSMPLNewsFilterViewController.m
//  ViperSample
//
//  Created by dmitry on 22/01/2018.
//  Copyright © 2018 dmitryklochkov. All rights reserved.
//

#import "VSMPLNewsFilterViewController.h"

#import "VSMPLNewsFilterViewOutput.h"

@implementation VSMPLNewsFilterViewController {
    __weak IBOutlet UISwitch *showOnlyUnreadSwitch;
}

#pragma mark - Методы жизненного цикла

- (void)viewDidLoad {
	[super viewDidLoad];

	[self.output didTriggerViewReadyEvent];
}

#pragma mark - Методы VSMPLNewsFilterViewInput

- (void)setupInitialState {
	// В этом методе происходит настройка параметров view, зависящих от ее жизненого цикла (создание элементов, анимации и пр.)
}


#pragma mark - VSMPLNewsFilterParamsProtocol

- (IBAction)showOnlyUnreadSwitchValueChanged:(UISwitch *)sender {
    [self.output newsFilterValuesDidChange];
}

@synthesize isRead;

-(NSNumber *)isRead {
    if(showOnlyUnreadSwitch.isOn) {
        return @(NO);
    } else {
        return nil;
    }
}

@end
