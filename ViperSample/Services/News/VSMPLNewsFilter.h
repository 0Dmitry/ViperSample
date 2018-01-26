//
//  VSMPLNewsFilter.h
//  ViperSample
//
//  Created by admin on 26/01/2018.
//  Copyright © 2018 Dmitry Klochkov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "VSMPLNewsFilterProtocol.h"

@interface VSMPLNewsFilter : NSObject<VSMPLNewsFilterProtocol>

-(instancetype) initWithId:(NSNumber *)newsId isRead:(NSNumber *)isRead;

@end
