//
//  VSMPLNews.h
//  ViperSample
//
//  Created by admin on 19/01/2018.
//  Copyright © 2018 Dmitry Klochkov. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface VSMPLNews : NSObject

@property(nonatomic,readonly) NSInteger newsId;
@property(nonatomic,readonly) NSString * title;
@property(nonatomic,readonly) NSString * text;
@property(nonatomic, readonly) NSDate * date;

-(id) initWithNewsId:(NSInteger) newsId title:(NSString *)title text:(NSString *)text date:(NSDate *)date;

@end
