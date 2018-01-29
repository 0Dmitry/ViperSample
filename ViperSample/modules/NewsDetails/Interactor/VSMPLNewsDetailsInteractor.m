//
//  VSMPLNewsDetailsInteractor.m
//  ViperSample
//
//  Created by dmitry on 25/01/2018.
//  Copyright © 2018 dmitryklochkov. All rights reserved.
//

#import "VSMPLNewsDetailsInteractor.h"

#import "VSMPLNewsDetailsInteractorOutput.h"
#import "VSMPLNewsFilter.h"

@implementation VSMPLNewsDetailsInteractor

#pragma mark - Методы VSMPLNewsDetailsInteractorInput

-(id<VSMPLNews>)getNewsWithId:(NSInteger)newsId {
    VSMPLNewsFilter * filter = [[VSMPLNewsFilter alloc] initWithId:@(newsId) isRead:nil];
    return [_newsManager getNewsWithFilter:filter andRow:0];
}

-(void)setIsRead:(BOOL)isRead forNewsId:(NSInteger)newsId {
    [_newsManager setIsRead:isRead forNewsId:newsId];
}

@end
