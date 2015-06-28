//
//  UIViewController+CurrentGrade.m
//  FinalExamCalculator
//
//  Created by Mitchell Kelman on 5/4/15.
//  Copyright (c) 2015 Mitchell Kelman. All rights reserved.
//

#import "CurrentGrade.h"

@interface CurrentGrade ()

@end


@implementation CurrentGrade

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _subjectOne.text = _subOne;
    if ([_subTwo isEqual:@""]) {
        _p2.hidden  = YES;
        _subjectTwo.hidden  = YES;
        _twoTF.hidden = YES;
    } else {
        _subjectTwo.text = _subTwo;
    }
    
    if ([_subThree isEqual:@""]) {
        _p3.hidden  = YES;
        _subjectThree.hidden  = YES;
        _threeTF.hidden = YES;
    } else {
        _subjectThree.text = _subThree;
    }
    
    if ([_subFour isEqual:@""]) {
        _p4.hidden  = YES;
        _subjectFour.hidden  = YES;
        _fourTF.hidden = YES;
    } else {
        _subjectFour.text = _subFour;
    }
    
    if ([_subFive isEqual:@""]) {
        _p5.hidden  = YES;
        _subjectFive.hidden  = YES;
        _fiveTF.hidden = YES;
    } else {
        _subjectFive.text = _subFive;
    }
    
    if ([_subSix isEqual:@""]) {
        _p6.hidden  = YES;
        _subjectSix.hidden  = YES;
        _sixTF.hidden = YES;
    } else {
        _subjectSix.text = _subSix;
    }

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)ResetButton:(id)sender {
    _oneTF.text =   @"";
    _twoTF.text =   @"";
    _threeTF.text = @"";
    _fourTF.text =  @"";
    _fiveTF.text =  @"";
    _sixTF.text =   @"";
}
- (IBAction)NextButton:(id)sender {
    if ([_oneTF.text isEqual:@""]) {
        _oneTF.text = @"0";
    }
    if ([_twoTF.text isEqual:@""]) {
        _twoTF.text = @"0";
    }
    if ([_threeTF.text isEqual:@""]) {
        _threeTF.text = @"0";
    }
    if ([_fourTF.text isEqual:@""]) {
        _fourTF.text = @"0";
    }
    if ([_fiveTF.text isEqual:@""]) {
        _fiveTF.text = @"0";
    }
    if ([_sixTF.text isEqual:@""]) {
        _sixTF.text = @"0";
    }
    
    if ([_oneTF.text isEqual:@"0"]) {
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Please fill in your current percentage for all the categories." message:@"" delegate:nil cancelButtonTitle:nil otherButtonTitles:nil];
        [alert show];
        [self performSelector:@selector(dismiss:) withObject:alert afterDelay:3.0];
    } else {
        [self performSegueWithIdentifier:@"toBreakDown" sender:self];
    }
    
    
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    [self.view endEditing:YES];
}

-(void)dismiss:(UIAlertView*)alert{
    [alert dismissWithClickedButtonIndex:0 animated:YES];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
   
    double a = 0.00, aminus = 0.00, bplus = 0.00, b = 0.00, bminus = 0.00,
        cplus = 0.00, c = 0.00, cminus = 0.00, dplus = 0.00, d = 0.00, dminus = 0.00;
    double current_total_points = 0.00;
    double current_weight = 0.00;
    
    //subperone is pernetage for that category and oneTF is what they got in that category
    
    double subOneAmount = (([_subPerOne doubleValue] * 0.01) * [_oneTF.text doubleValue]);
    double subTwoAmount = (([_subPerTwo doubleValue] * 0.01) * [_twoTF.text doubleValue]);
    double subThreeAmount = (([_subPerThree doubleValue] * 0.01) * [_threeTF.text doubleValue]);
    double subFourAmount = (([_subPerFour doubleValue] * 0.01) * [_fourTF.text doubleValue]);
    double subFiveAmount = (([_subPerFive doubleValue] * 0.01) * [_fiveTF.text doubleValue]);
    double subSixAmount = (([_subPerSix doubleValue] * 0.01) * [_sixTF.text doubleValue]);
    
    current_weight += [_subPerOne doubleValue];
    current_total_points += subOneAmount;
    
    if (![_subTwo isEqual:@""]) {
         current_weight += [_subPerTwo doubleValue];
        current_total_points += subTwoAmount;
    }
    if (![_subThree isEqual:@""]) {
        current_weight += [_subPerThree doubleValue];
        current_total_points += subThreeAmount;
    }
    if (![_subFour isEqual:@""]) {
        current_weight += [_subPerFour doubleValue];
        current_total_points += subFourAmount;
    }
    if (![_subFive isEqual:@""]) {
        current_weight += [_subPerFive doubleValue];
        current_total_points += subFiveAmount;
    }
    if (![_subSix isEqual:@""]) {
        current_weight += [_subPerSix doubleValue];
        current_total_points += subSixAmount;
    }
    
    double final_exam_weight = (100 - current_weight);
    BOOL aBool = NO, aminusBool = NO, bplusBool = NO, bBool = NO, bminusBool = NO,
    cplusBool = NO, cBool = NO, cminusBool = NO, dplusBool = NO, dBool = NO, dminusBool = NO;
    
    for (double i = 0; i <= 100; i = i + 0.1) {
        double current_add = (final_exam_weight * 0.01) * (i);

        //NSString *toString = [NSString stringWithFormat:@"%.02f", i];
        //double value = [toString doubleValue];
        
       // Grade* grade = [[Grade alloc] init];
        
       // int val = [grade getA];
        //val +=1 ;
        if (current_total_points + current_add >= 60 && dminusBool == NO) {
            dminus = i;
            dminusBool = YES;
            if (i == 0) {
                dminus = 999;
            }
        }
        
        if (current_total_points + current_add >= 63 && dBool == NO) {
            d = i;
            dBool = YES;
            if (i == 0) {
                d = 999;
            }
        }
        
        if (current_total_points + current_add >= 67 && dplusBool == NO) {
            dplus = i;
            dplusBool = YES;
            if (i == 0) {
                dplus = 999;
            }
        }
        // NOW for C's
        if (current_total_points + current_add >= 70 && cminusBool == NO) {
            cminus = i;
            cminusBool = YES;
            if (i == 0) {
                cminus = 999;
            }
        }
        
        if (current_total_points + current_add >= 73 && cBool == NO) {
            c = i;
            cBool = YES;
            if (i == 0) {
                c = 999;
            }
        }
        
        if (current_total_points + current_add >= 77 && cplusBool == NO) {
            cplus = i;
            cplusBool = YES;
            if (i == 0) {
                cplus = 999;
            }
        }
        // now for B's
        if (current_total_points + current_add >= 80 && bminusBool == NO) {
            bminus = i;
            bminusBool = YES;
            if (i == 0) {
                bminus = 999;
            }
        }
        
        if (current_total_points + current_add >= 83 && bBool == NO) {
            b = i;
            bBool = YES;
            if (i == 0) {
                b = 999;
            }
        }
        
        if (current_total_points + current_add >= 87 && bplusBool == NO) {
            bplus = i;
            bplusBool = YES;
            if (i == 0) {
                bplus = 999;
            }
        }
        // now for A's
        if (current_total_points + current_add >= 90 && aminusBool == NO) {
            aminus = i;
            aminusBool = YES;
            if (i == 0) {
                aminus = 999;
            }
        }
        
        if (current_total_points + current_add >= 93 && aBool == NO) {
            a = i;
            aBool = YES;
            if (i == 0) {
                a = 999;
            }
        }
        
    }
    
    FinalBreakDown *FBD = [segue destinationViewController];
    FBD.a = [[NSString stringWithFormat:@"%lf", a]substringToIndex:5];
    FBD.aminus = [[NSString stringWithFormat:@"%lf", aminus]substringToIndex:5];
    FBD.bplus = [[NSString stringWithFormat:@"%lf", bplus]substringToIndex:5];
    FBD.b = [[NSString stringWithFormat:@"%lf", b]substringToIndex:5];
    FBD.bminus = [[NSString stringWithFormat:@"%lf", bminus]substringToIndex:5];
    FBD.cplus = [[NSString stringWithFormat:@"%lf", cplus]substringToIndex:5];
    FBD.c = [[NSString stringWithFormat:@"%lf", c]substringToIndex:5];
    FBD.cminus = [[NSString stringWithFormat:@"%lf", cminus]substringToIndex:5];
    FBD.dplus = [[NSString stringWithFormat:@"%lf", dplus]substringToIndex:5];
    FBD.d = [[NSString stringWithFormat:@"%lf", d]substringToIndex:5];
    FBD.dminus = [[NSString stringWithFormat:@"%lf", dminus]substringToIndex:5];
    
    NSNumber *myDoubleNumber = [NSNumber numberWithDouble:final_exam_weight];
    FBD.remaining = [myDoubleNumber stringValue];
    
    NSNumber *myDoubleNumber2 = [NSNumber numberWithDouble:current_total_points];
    FBD.current_total_points  = [myDoubleNumber2 stringValue];
    
    
}

@end
