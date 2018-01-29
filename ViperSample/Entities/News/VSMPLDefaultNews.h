//
//  VSMPLNews.h
//  ViperSample
//
//  Created by admin on 19/01/2018.
//  Copyright © 2018 Dmitry Klochkov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "VSMPLNews.h"
#import <EasyMapping.h>

@interface VSMPLDefaultNews : NSObject<VSMPLNews, EKMappingProtocol>

@property(nonatomic, assign) NSInteger newsId;
@property(nonatomic, copy) NSString * title;
@property(nonatomic, copy) NSString * text;
@property(nonatomic, strong) NSDate * date;
@property(nonatomic, assign) BOOL isRead;


-(instancetype) initWithNewsId:(NSInteger) newsId title:(NSString *)title text:(NSString *)text date:(NSDate *)date;

@end
