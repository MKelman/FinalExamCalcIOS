//
//  UIViewController+CurrentGrade.h
//  FinalExamCalculator
//
//  Created by Mitchell Kelman on 5/4/15.
//  Copyright (c) 2015 Mitchell Kelman. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FinalBreakDown.h"
//#import "Grade.h"

@interface CurrentGrade : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *subjectOne;
@property (weak, nonatomic) IBOutlet UILabel *subjectTwo;
@property (weak, nonatomic) IBOutlet UILabel *subjectThree;
@property (weak, nonatomic) IBOutlet UILabel *subjectFour;
@property (weak, nonatomic) IBOutlet UILabel *subjectFive;
@property (weak, nonatomic) IBOutlet UILabel *subjectSix;
@property (weak, nonatomic) IBOutlet UILabel *p1;
@property (weak, nonatomic) IBOutlet UILabel *p2;
@property (weak, nonatomic) IBOutlet UILabel *p3;
@property (weak, nonatomic) IBOutlet UILabel *p4;
@property (weak, nonatomic) IBOutlet UILabel *p5;
@property (weak, nonatomic) IBOutlet UILabel *p6;
@property (weak, nonatomic) IBOutlet UITextField *oneTF;
@property (weak, nonatomic) IBOutlet UITextField *twoTF;
@property (weak, nonatomic) IBOutlet UITextField *threeTF;
@property (weak, nonatomic) IBOutlet UITextField *fourTF;
@property (weak, nonatomic) IBOutlet UITextField *fiveTF;
@property (weak, nonatomic) IBOutlet UITextField *sixTF;

- (IBAction)ResetButton:(id)sender;
- (IBAction)NextButton:(id)sender;

@property(strong,nonatomic)NSString *subOne, *subTwo, *subThree, *subFour, *subFive, *subSix;
@property(strong,nonatomic)NSString *subPerOne, *subPerTwo, *subPerThree, *subPerFour, *subPerFive, *subPerSix;

@end
