//
//  VSMPLNews.h
//  ViperSample
//
//  Created by admin on 19/01/2018.
//  Copyright © 2018 Dmitry Klochkov. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol VSMPLNews<NSObject>

@property(nonatomic,readonly,assign) NSInteger newsId;
@property(nonatomic,readonly,copy) NSString * title;
@property(nonatomic,readonly,copy) NSString * text;
@property(nonatomic, readonly,strong) NSDate * date;
@property(nonatomic, readonly, assign) BOOL isRead;

@end
