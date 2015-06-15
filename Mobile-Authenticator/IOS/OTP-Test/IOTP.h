//
//  IOTP.h
//  OTP-Test
//
//  Created by PRODUBAN on 6/8/15.
//  Copyright (c) 2015 Produban. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol IOTP <NSObject>

-(NSString *) generateToken;
- (id)initWithSecret:(NSString *)secret;

@end
