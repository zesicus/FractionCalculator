//
//  Fraction.h
//  Fraction
//
//  Created by TheSix on 7/15/15.
//  Copyright (c) 2015 myTest. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject

@property int numerator, denominator;
-(void) print;
-(void) setTo: (int) n over: (int) d;
-(Fraction *) add: (Fraction *) f;
-(Fraction *) subtract: (Fraction *) f;
-(Fraction *) multiply: (Fraction *) f;
-(Fraction *) divide: (Fraction *) f;
-(double) convertToNum;
-(NSString *) convertToString;
-(void) reduce;
@end
