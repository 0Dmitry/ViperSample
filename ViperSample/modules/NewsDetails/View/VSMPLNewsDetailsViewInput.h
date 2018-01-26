//
//  VSMPLNewsDetailsViewInput.h
//  ViperSample
//
//  Created by dmitry on 25/01/2018.
//  Copyright © 2018 dmitryklochkov. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol VSMPLNewsDetailsViewInput <NSObject>

@property(nonatomic, copy) NSString * newsTitle;
@property(nonatomic, copy) NSString * newsText;
@property(nonatomic, copy) NSString * newsDateTitle;


/**
 @author dmitry

 Метод настраивает начальный стейт view
 */
- (void)setupInitialState;

- (void) updateWithNewsId:(NSInteger) newsId;



@end
