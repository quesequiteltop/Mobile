//
//  OTPGen.h
//  OTP-Test
//
//  Created by PRODUBAN on 6/8/15.
//  Copyright (c) 2015 Produban. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IOTP.h"
#import "TOTPGenerator.h"
#import "OTP.h"
@interface OTPGen : NSObject<IOTP>


@property(strong) TOTPGenerator *generator;


- (id)initWithSecret:(NSManagedObject *)otpManModel;
-(NSString *)generateToken;

@end
