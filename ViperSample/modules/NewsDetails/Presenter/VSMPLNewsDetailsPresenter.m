//
//  VSMPLNewsDetailsPresenter.m
//  ViperSample
//
//  Created by dmitry on 25/01/2018.
//  Copyright © 2018 dmitryklochkov. All rights reserved.
//

#import "VSMPLNewsDetailsPresenter.h"

#import "VSMPLNewsDetailsViewInput.h"
#import "VSMPLNewsDetailsInteractorInput.h"
#import "VSMPLNewsDetailsRouterInput.h"

#import "VSMPLNews.h"


@implementation VSMPLNewsDetailsPresenter

@synthesize newsId = _newsId;

#pragma mark - Методы VSMPLNewsDetailsModuleInput

- (void)configureModule {
    // Стартовая конфигурация модуля, не привязанная к состоянию view
}

- (void)updateView{
    
    if (_newsId) {
        UIViewController *  viewController = (UIViewController * ) self.view;
        
        if (viewController.isViewLoaded) {
            id<VSMPLNews> news = [self.interactor getNewsWithId:_newsId.integerValue];
            
            [self.view setNewsTitle:news.title];
            [self.view setNewsText:news.text];
            
            NSString * dateStr = [NSDateFormatter localizedStringFromDate:news.date dateStyle:NSDateFormatterShortStyle timeStyle:NSDateFormatterNoStyle];
            
            [self.view setNewsDateTitle:dateStr];
        }
    }
    
}


#pragma mark - Методы VSMPLNewsDetailsViewOutput

- (void)didTriggerViewReadyEvent {
	[self.view setupInitialState];
    [self.interactor setIsRead:YES forNewsId:_newsId.integerValue];
    [self updateView];
}

-(void)setModuleOutput:(id<VSMPLNewsDetailsModuleOutput>)moduleOutput {
    self.output = moduleOutput;
    
    [self.output configureNewsDetailsModuleView:(UIViewController *) self.view];
    
    
}

#pragma mark - Методы VSMPLNewsDetailsInteractorOutput



@end
