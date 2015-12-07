//
//  ViewController.h
//  OCCalc
//
//  Created by TheSix on 8/6/15.
//  Copyright (c) 2015 myTest. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AlartViewController.h"

@interface ViewController : UIViewController <ExpendableAlartViewDelegate>

@property (weak, nonatomic) IBOutlet UILabel *display;

-(void)processDigit:(int)digit;
-(void)processOp:(char)theOp;
-(void)storeFracPart;

//数字键
- (IBAction)click0;
- (IBAction)click1;
- (IBAction)click2;
- (IBAction)click3;
- (IBAction)click4;
- (IBAction)click5;
- (IBAction)click6;
- (IBAction)click7;
- (IBAction)click8;
- (IBAction)click9;
//算术操作键
- (IBAction)clickPlus;
- (IBAction)clickMinus;
- (IBAction)clickMultiply;
- (IBAction)clickDivide;
//Misc键
- (IBAction)clickOver;
- (IBAction)clickEquals;
- (IBAction)clickC;
- (IBAction)clickAC;
- (IBAction)clickOpposite;


@property (weak, nonatomic) IBOutlet UIButton *clickNumButtonOutlet0;
@property (weak, nonatomic) IBOutlet UIButton *clickNumButtonOutlet1;
@property (weak, nonatomic) IBOutlet UIButton *clickNumButtonOutlet2;
@property (weak, nonatomic) IBOutlet UIButton *clickNumButtonOutlet3;
@property (weak, nonatomic) IBOutlet UIButton *clickNumButtonOutlet4;
@property (weak, nonatomic) IBOutlet UIButton *clickNumButtonOutlet5;
@property (weak, nonatomic) IBOutlet UIButton *clickNumButtonOutlet6;
@property (weak, nonatomic) IBOutlet UIButton *clickNumButtonOutlet7;
@property (weak, nonatomic) IBOutlet UIButton *clickNumButtonOutlet8;
@property (weak, nonatomic) IBOutlet UIButton *clickNumButtonOutlet9;
@property (weak, nonatomic) IBOutlet UIButton *clickNumButtonOutletOpposite;
@property (weak, nonatomic) IBOutlet UIButton *clickNumButtonOutletAC;
@property (weak, nonatomic) IBOutlet UIButton *clickNumButtonOutletC;
@property (weak, nonatomic) IBOutlet UIButton *clickNumButtonOutletAdd;
@property (weak, nonatomic) IBOutlet UIButton *clickNumButtonOutletMin;
@property (weak, nonatomic) IBOutlet UIButton *clickNumButtonOutletMul;
@property (weak, nonatomic) IBOutlet UIButton *clickNumButtonOutletDiv;
@property (weak, nonatomic) IBOutlet UIButton *clickNumButtonOutletOver;
@property (weak, nonatomic) IBOutlet UIButton *clickNumButtonOutletEqual;


@end

