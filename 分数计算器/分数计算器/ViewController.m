//
//  ViewController.m
//  OCCalc
//
//  Created by TheSix on 8/6/15.
//  Copyright (c) 2015 myTest. All rights reserved.
//

#import "ViewController.h"
#import "Calculator.h"

@interface ViewController ()

@end

@implementation ViewController {
    char op;
    int currentNumber;
    BOOL firstOperand, isNumerator;
    Calculator *myCalculator;
    NSMutableString *displayString;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    firstOperand = YES;
    isNumerator = YES;
    displayString = [NSMutableString stringWithCapacity:40];
    myCalculator = [[Calculator alloc] init];
    
    [_clickNumButtonOutletC setTitle:@"" forState:UIControlStateNormal];
    [_clickNumButtonOutletC setTitle:@"😅" forState:UIControlStateNormal];
    
    
    //提示框
    UIAlertView *cc = [[UIAlertView alloc] initWithTitle:@"我是提示框" message:@"This is my first IOS OC program, 用的是书上的demo, bug满天飞...什么，你一定要用？" delegate:nil cancelButtonTitle:@"其实作者是演员😜" otherButtonTitles:nil, nil];
    [cc show];
    
    [_clickNumButtonOutlet0.layer setBorderWidth:0.5];   //边框宽度
    [_clickNumButtonOutlet1.layer setBorderWidth:0.5];   //边框宽度
    [_clickNumButtonOutlet2.layer setBorderWidth:0.5];   //边框宽度
    [_clickNumButtonOutlet3.layer setBorderWidth:0.5];   //边框宽度
    [_clickNumButtonOutlet4.layer setBorderWidth:0.5];   //边框宽度
    [_clickNumButtonOutlet5.layer setBorderWidth:0.5];   //边框宽度
    [_clickNumButtonOutlet6.layer setBorderWidth:0.5];   //边框宽度
    [_clickNumButtonOutlet7.layer setBorderWidth:0.5];   //边框宽度
    [_clickNumButtonOutlet8.layer setBorderWidth:0.5];   //边框宽度
    [_clickNumButtonOutlet9.layer setBorderWidth:0.5];   //边框宽度
    [_clickNumButtonOutletAC.layer setBorderWidth:0.5];   //边框宽度
    [_clickNumButtonOutletAdd.layer setBorderWidth:0.5];   //边框宽度
    [_clickNumButtonOutletC.layer setBorderWidth:0.5];   //边框宽度
    [_clickNumButtonOutletDiv.layer setBorderWidth:0.5];   //边框宽度
    [_clickNumButtonOutletEqual.layer setBorderWidth:0.5];   //边框宽度
    [_clickNumButtonOutletMin.layer setBorderWidth:0.5];   //边框宽度
    [_clickNumButtonOutletMul.layer setBorderWidth:0.5];   //边框宽度
    [_clickNumButtonOutletOpposite.layer setBorderWidth:0.5];   //边框宽度
    [_clickNumButtonOutletOver.layer setBorderWidth:0.5];   //边框宽度
    
}

//Expand提示框扩展
- (void)negativeButtonAction {
    NSLog(@"negative Action");
}
- (void)positiveButtonAction {
    NSLog(@"positive Action");
}
- (void)closeButtonAction {
    NSLog(@"close Action");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)processDigit:(int)digit {
    currentNumber = currentNumber * 10 + digit;
    [displayString appendString:[NSString stringWithFormat:@"%i", digit]];
    _display.text = displayString;
}

- (void) processOp:(char)theOp {
    NSString *opStr;
    op = theOp;
    switch (op) {
        case '+':
            opStr = @"+";
            break;
        case '-':
            opStr = @"−";
            break;
        case '*':
            opStr = @"×";
            break;
        case '/':
            opStr = @"÷";
            break;
        default:
            break;
    }
    [self storeFracPart];
    firstOperand = NO;
    isNumerator = YES;
    [displayString appendString:opStr];
    _display.text = displayString;
}

- (void) storeFracPart {
    if (firstOperand) {
        if (isNumerator) {
            myCalculator.operand1.numerator = currentNumber;
            myCalculator.operand1.denominator = 1;
        } else
            myCalculator.operand1.denominator = currentNumber;
    } else if (isNumerator) {
        myCalculator.operand2.numerator = currentNumber;
        myCalculator.operand2.denominator = 1;
    } else {
        myCalculator.operand2.denominator = currentNumber;
        firstOperand = YES;
    }
    currentNumber = 0;
}

- (IBAction)clickPlus {
    [self processOp:'+'];
}

- (IBAction)clickMinus {
    [self processOp:'-'];
}

- (IBAction)clickMultiply {
    [self processOp:'*'];
}

- (IBAction)clickDivide {
    [self processOp:'/'];
}
- (IBAction)clickOver {
    [self storeFracPart];
    isNumerator = NO;
    [displayString appendString:@"/"];
    _display.text = displayString;
}

- (IBAction)clickEquals {
    if (!firstOperand) {
        [self storeFracPart];
        [myCalculator performOperation:op];
        [displayString appendString:@"="];
        [displayString appendString:[myCalculator.accumulator convertToString]];
        _display.text = displayString;
        currentNumber = 0;
        isNumerator = YES;
        firstOperand = YES;
        [displayString setString:@""];
    }
}

- (IBAction)clickC {
    UIAlertView *cc = [[UIAlertView alloc] initWithTitle:@"我还是提示框" message:@"我只是不能实现任何功能而已，因为我是个演员😅" delegate:nil cancelButtonTitle:@"好(个屁)！" otherButtonTitles:nil, nil];
    [cc show];
}

- (IBAction)clickAC {
    isNumerator = YES;
    firstOperand = YES;
    currentNumber = 0;
    [myCalculator clear];
    [displayString setString:@""];
    _display.text = displayString;
}

- (IBAction)clickOpposite {
    currentNumber -= 2 * currentNumber;
    if (currentNumber < 0) {
        [displayString insertString:@"-" atIndex:0];
        _display.text = displayString;
    } else {
        [displayString deleteCharactersInRange:[displayString rangeOfString:@"-"]];
        _display.text = displayString;
    }
    
}

- (IBAction)click0 {
    int digit = 0;
    [self processDigit:digit];
}

- (IBAction)click1 {
    int digit = 1;
    [self processDigit:digit];
}

- (IBAction)click2 {
    int digit = 2;
    [self processDigit:digit];
}

- (IBAction)click3 {
    int digit = 3;
    [self processDigit:digit];
}

- (IBAction)click4 {
    int digit = 4;
    [self processDigit:digit];
}

- (IBAction)click5 {
    int digit = 5;
    [self processDigit:digit];
}

- (IBAction)click6 {
    int digit = 6;
    [self processDigit:digit];
}

- (IBAction)click7 {
    int digit = 7;
    [self processDigit:digit];
}

- (IBAction)click8 {
    int digit = 8;
    [self processDigit:digit];
}

- (IBAction)click9 {
    int digit = 9;
    [self processDigit:digit];
}
@end
