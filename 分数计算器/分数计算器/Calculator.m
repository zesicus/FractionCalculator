//
//  Calculator.m
//  OCCalc
//
//  Created by TheSix on 8/8/15.
//  Copyright (c) 2015 myTest. All rights reserved.
//

#import "Calculator.h"

@implementation Calculator

-(id) init {
    self = [super init];
    if (self) {
        //操作数初始化（Fraction类型）
        _operand1 = [[Fraction alloc] init];
        _operand2 = [[Fraction alloc] init];
        _accumulator = [[Fraction alloc] init];
    }
    return self;
}

-(void) clear {
    _accumulator.numerator = 0;
    _accumulator.denominator = 0;
}

-(Fraction *) performOperation:(char)op {
    //为什么这个没有alloc？
    Fraction *result;
    switch (op) {
        case '+':
            result = [_operand1 add: _operand2];
            break;
        case '-':
            result = [_operand1 subtract: _operand2];
            break;
        case '*':
            result = [_operand1 multiply: _operand2];
            break;
        case '/':
            result = [_operand1 divide: _operand2];
            break;
        default:
            break;
    }
    _accumulator.numerator = result.numerator;
    _accumulator.denominator = result.denominator;
    return _accumulator;
}

@end
