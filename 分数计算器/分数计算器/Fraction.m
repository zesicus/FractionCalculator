//
//  Fraction.m
//  Fraction
//
//  Created by TheSix on 7/15/15.
//  Copyright (c) 2015 myTest. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction
@synthesize numerator, denominator;
//分子分母赋值
-(void) setTo:(int)n over:(int)d {
    numerator = n;
    denominator = d;
}

-(Fraction *) add:(Fraction *)f {
    Fraction *result = [[Fraction alloc] init];
    result.numerator = numerator * f.denominator + denominator * f.numerator;
    result.denominator = denominator * f.denominator;
    [result reduce];
    return result;
}

-(Fraction *)subtract:(Fraction *)f {
    Fraction *result = [[Fraction alloc] init];
    result.numerator = numerator * f.denominator - denominator * f.numerator;
    result.denominator = denominator + f.denominator;
    [result reduce];
    return result;
}

-(Fraction *) multiply:(Fraction *)f {
    Fraction *result = [[Fraction alloc] init];
    result.numerator = numerator * f.numerator;
    result.denominator = denominator * f.denominator;
    [result reduce];
    return result;
}

-(Fraction *)divide:(Fraction *)f {
    Fraction *result = [[Fraction alloc] init];
    result.numerator = numerator * f.denominator;
    result.denominator = denominator * f.numerator;
    [result reduce];
    return result;
}

//转换成小数
-(double) convertToNum {
    if (denominator != 0)
        return (double) numerator / denominator;
    else
        return NAN;
}
//转换成字符
-(NSString *) convertToString {
    if (numerator == denominator) {
        //判断特殊情况分子分母为0或者相同情况下输出
        if (numerator == 0) {
            return @"0";
        } else {
            return @"1";
        }
    } else if (denominator == 1)
        return [NSString stringWithFormat:@"%i", numerator];
    else
        return [NSString stringWithFormat:@"%i/%i", numerator, denominator];
}
//分子分母约分（结果）
-(void) reduce {
    int u = numerator;
    int v = denominator;
    int temp;
    while (v != 0) {
        temp = u % v;
        u = v;
        v = temp;
    }
    numerator /= u;
    denominator /= u;
}
//输出分子，分母
-(void) print {
    NSLog(@"%i/%i", numerator, denominator);
}
@end
