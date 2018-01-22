//
//  VSMPLNewsFilter.h
//  ViperSample
//
//  Created by admin on 22/01/2018.
//  Copyright © 2018 Dmitry Klochkov. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface VSMPLNewsFilter : NSObject

@property(nonatomic, readonly) NSNumber * isRead;

-(instancetype) initWithIsRead:(NSNumber * ) isRead;

@end
