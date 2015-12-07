//
//  Calculator.h
//  OCCalc
//
//  Created by TheSix on 8/8/15.
//  Copyright (c) 2015 myTest. All rights reserved.
//

#import "Fraction.h"
//处理分数
@interface Calculator : NSObject

@property (strong, nonatomic) Fraction *operand1;
@property (strong, nonatomic) Fraction *operand2;
@property (strong, nonatomic) Fraction *accumulator;

-(Fraction *) performOperation: (char) op;
-(void) clear;

@end
