//
//  VSMPLNewsFilterViewInput.h
//  ViperSample
//
//  Created by dmitry on 22/01/2018.
//  Copyright © 2018 dmitryklochkov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "VSMPLNewsFilterProtocol.h"

@protocol VSMPLNewsFilterViewInput <NSObject, VSMPLNewsFilterProtocol>

/**
 @author dmitry

 Метод настраивает начальный стейт view
 */
- (void)setupInitialState;

@end
