//
//  OTPGen.m
//  OTP-Test
//
//  Created by PRODUBAN on 6/8/15.
//  Copyright (c) 2015 Produban. All rights reserved.
//

#import "OTPGen.h"
#import "TOTPGenerator.h"
#import "MF_Base32Additions.h"


@interface OTPGen()
@property(strong)OTP * otp;

@end

@implementation OTPGen

static NSInteger DEFAULT_DIGITS = 6;
static  NSInteger DEFAULT_PERIOD = 30;


- (id)initWithSecret:(NSManagedObject *)otpManModel
{
    self = [super init];
    if (self) {
        
        self.otp = [[OTP alloc]initWithClientID:[otpManModel valueForKey:@"clientID"] AndIssuer:[otpManModel valueForKey:@"issuer"] Algorith:[otpManModel valueForKey:@"algorithm"] AndSecret:[otpManModel valueForKey:@"secret"]];;
        NSData *secretData =  [NSData dataWithBase32String:self.otp.secret];

        self.generator = [[TOTPGenerator alloc] initWithSecret:secretData algorithm:kOTPGeneratorSHA1Algorithm digits:DEFAULT_DIGITS period:DEFAULT_PERIOD];
    }
    return self;
}

-(NSString *)generateToken{
    return [self.generator generateOTPForDate:[NSDate date]];
}

@end
