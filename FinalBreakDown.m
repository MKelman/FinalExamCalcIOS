//
//  UIViewController+FinalBreakDown.m
//  FinalExamCalculator
//
//  Created by Mitchell Kelman on 5/4/15.
//  Copyright (c) 2015 Mitchell Kelman. All rights reserved.
//

#import "FinalBreakDown.h"

@interface FinalBreakDown ()

@end

@implementation FinalBreakDown
UITextField *alertTextField;
bool a,aminus,bplus,b,bminus,cplus,c,cminus,dplus,d,dminus;
- (void)viewDidLoad {
    
    [super viewDidLoad];
    a = NO;
    aminus = NO;
    bplus = NO;
    b = NO;
    bminus = NO;
    cplus = NO;
    c = NO;
    cminus = NO;
    dplus = NO;
    d = NO;
    dminus = NO;
    
    if ([_a isEqualToString:@"0.000"]) {
        [_atf setText:@"Not possible"];
        _p1.hidden = YES;
    } else if([_a isEqualToString:@"999.0"]) {
        [_atf setText:@"Already recieved"];
        _p1.hidden = YES;
    } else {
        [_atf setText:_a];
    }
    
    if ([_aminus isEqualToString:@"0.000"]) {
        [_aminustf setText:@"Not possible"];
        _p2.hidden = YES;
    } else if([_aminus isEqualToString:@"999.0"]) {
        [_aminustf setText:@"Already recieved"];
        _p2.hidden = YES;
    } else {
        [_aminustf setText:_aminus];
    }
    /*B VALUES*/
    if ([_bplus isEqualToString:@"0.000"]) {
        [_bplustf setText:@"Not possible"];
        _p3.hidden = YES;
    } else if([_bplus isEqualToString:@"999.0"]) {
        [_bplustf setText:@"Already recieved"];
        _p3.hidden = YES;
    } else {
        [_bplustf setText:_bplus];    }
    
    if ([_b isEqualToString:@"0.000"]) {
        [_btf setText:@"Not possible"];
        _p4.hidden = YES;
    } else if([_b isEqualToString:@"999.0"]) {
        [_btf setText:@"Already recieved"];
        _p4.hidden = YES;
    } else {
        [_btf setText:_b];
    }
    
    if ([_bminus isEqualToString:@"0.000"]) {
        [_bminustf setText:@"Not possible"];
        _p5.hidden = YES;
    } else if([_bminus isEqualToString:@"999.0"]) {
        [_bminustf setText:@"Already recieved"];
        _p5.hidden = YES;
    } else {
        [_bminustf setText:_bminus];
    }
    
    /*C VALUES*/
    if ([_cplus isEqualToString:@"0.000"]) {
        [_cplustf setText:@"Not possible"];
        _p6.hidden = YES;
    } else if([_cplus isEqualToString:@"999.0"]) {
        [_cplustf setText:@"Already recieved"];
        _p6.hidden = YES;
    } else {
        [_cplustf setText:_cplus];
    }
    
    if ([_c isEqualToString:@"0.000"]) {
        [_ctf setText:@"Not possible"];
        _p7.hidden = YES;
    } else if([_c isEqualToString:@"999.0"]) {
        [_ctf setText:@"Already recieved"];
        _p7.hidden = YES;
    } else {
        [_ctf setText:_c];
    }
    
    if ([_cminus isEqualToString:@"0.000"]) {
        [_cminustf setText:@"Not possible"];
        _p8.hidden = YES;
    } else if([_cminus isEqualToString:@"999.0"]) {
        [_cminustf setText:@"Already recieved"];
        _p8.hidden = YES;
    } else {
        [_cminustf setText:_cminus];
    }
    
    /*D VALUES*/
    if ([_dplus isEqualToString:@"0.000"]) {
        [_dplustf setText:@"Not possible"];
        _p9.hidden = YES;
    } else if([_dplus isEqualToString:@"999.0"]) {
        [_dplustf setText:@"Already recieved"];
        _p9.hidden = YES;
    } else {
        [_dplustf setText:_dplus];
    }
    
    if ([_d isEqualToString:@"0.000"]) {
        [_dtf setText:@"Not possible"];
        _p10.hidden = YES;
    } else if([_d isEqualToString:@"999.0"]) {
        [_dtf setText:@"Already recieved"];
        _p10.hidden = YES;
    } else {
        [_dtf setText:_d];
    }
    
    if ([_dminus isEqualToString:@"0.000"]) {
        [_dminustf setText:@"Not possible"];
        _p11.hidden = YES;
    } else if([_dminus isEqualToString:@"999.0"]) {
        [_dminustf setText:@"Already recieved"];
        _p11.hidden = YES;
    } else {
        [_dminustf setText:_dminus];
    }
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

- (IBAction)curAValue:(id)sender {
    NSString *sentenceToDisplay = [NSString stringWithFormat:@"The original value for a A is an 93.00. Type in a new value if you want to change it."];
    UIAlertView *myAlertView = [[UIAlertView alloc] initWithTitle:sentenceToDisplay
                                                          message:nil
                                                         delegate:self
                                                cancelButtonTitle:@"Cancel"
                                                otherButtonTitles: @"Submit Change",nil];
    myAlertView.alertViewStyle = UIAlertViewStylePlainTextInput;
    alertTextField = [myAlertView textFieldAtIndex:0];
    alertTextField.keyboardType = UIKeyboardTypeDecimalPad;
    [myAlertView show];
    a = YES;
}

- (IBAction)curAMinusValue:(id)sender {
    NSString *sentenceToDisplay = [NSString stringWithFormat:@"The original value for a A- is an 90.00. Type in a new value if you want to change it."];
    UIAlertView *myAlertView = [[UIAlertView alloc] initWithTitle:sentenceToDisplay
                                                          message:nil
                                                         delegate:self
                                                cancelButtonTitle:@"Cancel"
                                                otherButtonTitles: @"Submit Change",nil];
    myAlertView.alertViewStyle = UIAlertViewStylePlainTextInput;
    alertTextField = [myAlertView textFieldAtIndex:0];
    alertTextField.keyboardType = UIKeyboardTypeDecimalPad;
    [myAlertView show];
    aminus = YES;

}
- (IBAction)curBPlusValue:(id)sender {
    NSString *sentenceToDisplay = [NSString stringWithFormat:@"The original value for a B+ is an 87.00. Type in a new value if you want to change it."];
    UIAlertView *myAlertView = [[UIAlertView alloc] initWithTitle:sentenceToDisplay
                                                          message:nil
                                                         delegate:self
                                                cancelButtonTitle:@"Cancel"
                                                otherButtonTitles: @"Submit Change",nil];
    myAlertView.alertViewStyle = UIAlertViewStylePlainTextInput;
    alertTextField = [myAlertView textFieldAtIndex:0];
    alertTextField.keyboardType = UIKeyboardTypeDecimalPad;
    [myAlertView show];
    bplus = YES;

}
- (IBAction)curBValue:(id)sender {
    NSString *sentenceToDisplay = [NSString stringWithFormat:@"The original value for a B is a 83.00. Type in a new value if you want to change it."];
    UIAlertView *myAlertView = [[UIAlertView alloc] initWithTitle:sentenceToDisplay
                                                          message:nil
                                                         delegate:self
                                                cancelButtonTitle:@"Cancel"
                                                otherButtonTitles: @"Submit Change",nil];
    myAlertView.alertViewStyle = UIAlertViewStylePlainTextInput;
    alertTextField = [myAlertView textFieldAtIndex:0];
    alertTextField.keyboardType = UIKeyboardTypeDecimalPad;
    [myAlertView show];
    b = YES;

}
- (IBAction)curBMinusValue:(id)sender {
    NSString *sentenceToDisplay = [NSString stringWithFormat:@"The original value for a B- is an 80.00. Type in a new value if you want to change it."];
    UIAlertView *myAlertView = [[UIAlertView alloc] initWithTitle:sentenceToDisplay
                                                          message:nil
                                                         delegate:self
                                                cancelButtonTitle:@"Cancel"
                                                otherButtonTitles: @"Submit Change",nil];
    myAlertView.alertViewStyle = UIAlertViewStylePlainTextInput;
    alertTextField = [myAlertView textFieldAtIndex:0];
    alertTextField.keyboardType = UIKeyboardTypeDecimalPad;
    [myAlertView show];
    bminus = YES;

}
- (IBAction)curCPlusValue:(id)sender {
    NSString *sentenceToDisplay = [NSString stringWithFormat:@"The original value for a C+ is an 77.00. Type in a new value if you want to change it."];
    UIAlertView *myAlertView = [[UIAlertView alloc] initWithTitle:sentenceToDisplay
                                                          message:nil
                                                         delegate:self
                                                cancelButtonTitle:@"Cancel"
                                                otherButtonTitles: @"Submit Change",nil];
    myAlertView.alertViewStyle = UIAlertViewStylePlainTextInput;
    alertTextField = [myAlertView textFieldAtIndex:0];
    alertTextField.keyboardType = UIKeyboardTypeDecimalPad;
    [myAlertView show];
    cplus = YES;

}
- (IBAction)curCValue:(id)sender {
    NSString *sentenceToDisplay = [NSString stringWithFormat:@"The original value for a C is an 73.00. Type in a new value if you want to change it."];
    UIAlertView *myAlertView = [[UIAlertView alloc] initWithTitle:sentenceToDisplay
                                                          message:nil
                                                         delegate:self
                                                cancelButtonTitle:@"Cancel"
                                                otherButtonTitles: @"Submit Change",nil];
    myAlertView.alertViewStyle = UIAlertViewStylePlainTextInput;
    alertTextField = [myAlertView textFieldAtIndex:0];
    alertTextField.keyboardType = UIKeyboardTypeDecimalPad;
    [myAlertView show];
    c = YES;

}
- (IBAction)curCMinusValue:(id)sender {
    NSString *sentenceToDisplay = [NSString stringWithFormat:@"The original value for a C- is an 70.00. Type in a new value if you want to change it."];
    UIAlertView *myAlertView = [[UIAlertView alloc] initWithTitle:sentenceToDisplay
                                                          message:nil
                                                         delegate:self
                                                cancelButtonTitle:@"Cancel"
                                                otherButtonTitles: @"Submit Change",nil];
    myAlertView.alertViewStyle = UIAlertViewStylePlainTextInput;
    alertTextField = [myAlertView textFieldAtIndex:0];
    alertTextField.keyboardType = UIKeyboardTypeDecimalPad;
    [myAlertView show];
    cminus = YES;

}
- (IBAction)curDPlusValue:(id)sender {
    NSString *sentenceToDisplay = [NSString stringWithFormat:@"The original value for a D+ is an 67.00. Type in a new value if you want to change it."];
    UIAlertView *myAlertView = [[UIAlertView alloc] initWithTitle:sentenceToDisplay
                                                          message:nil
                                                         delegate:self
                                                cancelButtonTitle:@"Cancel"
                                                otherButtonTitles: @"Submit Change",nil];
    myAlertView.alertViewStyle = UIAlertViewStylePlainTextInput;
    alertTextField = [myAlertView textFieldAtIndex:0];
    alertTextField.keyboardType = UIKeyboardTypeDecimalPad;
    [myAlertView show];
    dplus = YES;

}
- (IBAction)curDValue:(id)sender {
    NSString *sentenceToDisplay = [NSString stringWithFormat:@"The original value for a D is an 63.00. Type in a new value if you want to change it."];
    UIAlertView *myAlertView = [[UIAlertView alloc] initWithTitle:sentenceToDisplay
                                                          message:nil
                                                         delegate:self
                                                cancelButtonTitle:@"Cancel"
                                                otherButtonTitles: @"Submit Change",nil];
    myAlertView.alertViewStyle = UIAlertViewStylePlainTextInput;
    alertTextField = [myAlertView textFieldAtIndex:0];
    alertTextField.keyboardType = UIKeyboardTypeDecimalPad;
    [myAlertView show];
    d = YES;

}
- (IBAction)curDMinusValue:(id)sender {
    NSString *sentenceToDisplay = [NSString stringWithFormat:@"The original value for a D- is an 60.00. Type in a new value if you want to change it."];
    UIAlertView *myAlertView = [[UIAlertView alloc] initWithTitle:sentenceToDisplay
                                                          message:nil
                                                         delegate:self
                                                cancelButtonTitle:@"Cancel"
                                                otherButtonTitles: @"Submit Change",nil];
    myAlertView.alertViewStyle = UIAlertViewStylePlainTextInput;
    alertTextField = [myAlertView textFieldAtIndex:0];
    alertTextField.keyboardType = UIKeyboardTypeDecimalPad;
    [myAlertView show];
    dminus = YES;

}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    NSString *newValue = [alertTextField text];
    NSString *title = [alertView buttonTitleAtIndex:buttonIndex];
    
    if([title isEqualToString:@"Submit Change"]) {

    if (![newValue isEqualToString:@""]) {
        if (a == YES) {
            double newvalue = (([newValue doubleValue]) - 93.00) * 0.01;
            bool done = NO;
            if (newvalue < 0) {
                double finalValue = 0.0;
                for (double i = 0; i <= 100; i = i + 0.1) {
                    double current_add = ([_remaining doubleValue] * 0.01) * (i);
                    if (done == NO && [_current_total_points doubleValue] + current_add >= [newValue doubleValue]) {
                        finalValue = i;
                        done = YES;
                    }
                }
                if (finalValue == 0) {
                    [_atf setText: @"Already recieved"];
                    _p1.hidden = YES;
                } else {
                    [_atf setText:[[NSString stringWithFormat:@"%lf", finalValue]substringToIndex:5]];
                    _p1.hidden = NO;
                }
  
            } else {
                [_atf setText: @"Not possible"];
                _p1.hidden = YES;

            }
            a = NO;
                
        }
        if (aminus == YES) {
            double newvalue = (([newValue doubleValue]) - 90.00) * 0.01;
            bool done = NO;
            if (newvalue < 0) {
                double finalValue = 0.0;
                for (double i = 0; i <= 100; i = i + 0.1) {
                    double current_add = ([_remaining doubleValue] * 0.01) * (i);
                    if (done == NO && [_current_total_points doubleValue] + current_add >= [newValue doubleValue]) {
                        finalValue = i;
                        done = YES;
                    }
                }
                if (finalValue == 0) {
                    [_aminustf setText: @"Already recieved"];
                    _p2.hidden = YES;
                } else {
                    [_aminustf setText:[[NSString stringWithFormat:@"%lf", finalValue]substringToIndex:5]];
                    _p2.hidden = NO;
                }
                
            } else {
                [_aminustf setText: @"Not possible"];
                _p2.hidden = YES;
                
            }
            aminus = NO;

        }
        if (bplus == YES) {
            double newvalue = (([newValue doubleValue]) - 87.00) * 0.01;
            bool done = NO;
            if (newvalue < 0) {
                double finalValue = 0.0;
                for (double i = 0; i <= 100; i = i + 0.1) {
                    double current_add = ([_remaining doubleValue] * 0.01) * (i);
                    if (done == NO && [_current_total_points doubleValue] + current_add >= [newValue doubleValue]) {
                        finalValue = i;
                        done = YES;
                    }
                }
                if (finalValue == 0) {
                    [_bplustf setText: @"Already recieved"];
                    _p3.hidden = YES;
                } else {
                    [_bplustf setText:[[NSString stringWithFormat:@"%lf", finalValue]substringToIndex:5]];
                    _p3.hidden = NO;
                }
                
            } else {
                [_bplustf setText: @"Not possible"];
                _p3.hidden = YES;
                
            }
            bplus = NO;
        }
        if (b == YES) {
            double newvalue = (([newValue doubleValue]) - 85.00) * 0.01;
            bool done = NO;
            if (newvalue < 0) {
                double finalValue = 0.0;
                for (double i = 0; i <= 100; i = i + 0.1) {
                    double current_add = ([_remaining doubleValue] * 0.01) * (i);
                    if (done == NO && [_current_total_points doubleValue] + current_add >= [newValue doubleValue]) {
                        finalValue = i;
                        done = YES;
                    }
                }
                if (finalValue == 0) {
                    [_btf setText: @"Already recieved"];
                    _p4.hidden = YES;
                } else {
                    [_btf setText:[[NSString stringWithFormat:@"%lf", finalValue]substringToIndex:5]];
                    _p4.hidden = NO;
                }
                
            } else {
                [_btf setText: @"Not possible"];
                _p4.hidden = YES;
                
            }
            b = NO;
        }
        if (bminus == YES) {
            double newvalue = (([newValue doubleValue]) - 83.00) * 0.01;
            bool done = NO;
            if (newvalue < 0) {
                double finalValue = 0.0;
                for (double i = 0; i <= 100; i = i + 0.1) {
                    double current_add = ([_remaining doubleValue] * 0.01) * (i);
                    if (done == NO && [_current_total_points doubleValue] + current_add >= [newValue doubleValue]) {
                        finalValue = i;
                        done = YES;
                    }
                }
                if (finalValue == 0) {
                    [_bminustf setText: @"Already recieved"];
                    _p5.hidden = YES;
                } else {
                    [_bminustf setText:[[NSString stringWithFormat:@"%lf", finalValue]substringToIndex:5]];
                    _p5.hidden = NO;
                }
                
            } else {
                [_bminustf setText: @"Not possible"];
                _p5.hidden = YES;
                
            }
            bminus = NO;
        }
        if (cplus == YES) {
            double newvalue = (([newValue doubleValue]) - 93.00) * 0.01;
            bool done = NO;
            if (newvalue < 0) {
                double finalValue = 0.0;
                for (double i = 0; i <= 100; i = i + 0.1) {
                    double current_add = ([_remaining doubleValue] * 0.01) * (i);
                    if (done == NO && [_current_total_points doubleValue] + current_add >= [newValue doubleValue]) {
                        finalValue = i;
                        done = YES;
                    }
                }
                if (finalValue == 0) {
                    [_cplustf setText: @"Already recieved"];
                    _p6.hidden = YES;
                } else {
                    [_cplustf setText:[[NSString stringWithFormat:@"%lf", finalValue]substringToIndex:5]];
                    _p6.hidden = NO;
                }
                
            } else {
                [_cplustf setText: @"Not possible"];
                _p6.hidden = YES;
                
            }
            cplus = NO;
        }
        if (c == YES) {
            double newvalue = (([newValue doubleValue]) - 93.00) * 0.01;
            bool done = NO;
            if (newvalue < 0) {
                double finalValue = 0.0;
                for (double i = 0; i <= 100; i = i + 0.1) {
                    double current_add = ([_remaining doubleValue] * 0.01) * (i);
                    if (done == NO && [_current_total_points doubleValue] + current_add >= [newValue doubleValue]) {
                        finalValue = i;
                        done = YES;
                    }
                }
                if (finalValue == 0) {
                    [_ctf setText: @"Already recieved"];
                    _p7.hidden = YES;
                } else {
                    [_ctf setText:[[NSString stringWithFormat:@"%lf", finalValue]substringToIndex:5]];
                    _p7.hidden = NO;
                }
                
            } else {
                [_ctf setText: @"Not possible"];
                _p7.hidden = YES;
                
            }
            c = NO;
        }
        if (cminus == YES) {
            double newvalue = (([newValue doubleValue]) - 93.00) * 0.01;
            bool done = NO;
            if (newvalue < 0) {
                double finalValue = 0.0;
                for (double i = 0; i <= 100; i = i + 0.1) {
                    double current_add = ([_remaining doubleValue] * 0.01) * (i);
                    if (done == NO && [_current_total_points doubleValue] + current_add >= [newValue doubleValue]) {
                        finalValue = i;
                        done = YES;
                    }
                }
                if (finalValue == 0) {
                    [_cminustf setText: @"Already recieved"];
                    _p8.hidden = YES;
                } else {
                    [_cminustf setText:[[NSString stringWithFormat:@"%lf", finalValue]substringToIndex:5]];
                    _p8.hidden = NO;
                }
                
            } else {
                [_cminustf setText: @"Not possible"];
                _p8.hidden = YES;
                
            }
            cminus = NO;
        }
        if (dplus == YES) {
            double newvalue = (([newValue doubleValue]) - 93.00) * 0.01;
            bool done = NO;
            if (newvalue < 0) {
                double finalValue = 0.0;
                for (double i = 0; i <= 100; i = i + 0.1) {
                    double current_add = ([_remaining doubleValue] * 0.01) * (i);
                    if (done == NO && [_current_total_points doubleValue] + current_add >= [newValue doubleValue]) {
                        finalValue = i;
                        done = YES;
                    }
                }
                if (finalValue == 0) {
                    [_dplustf setText: @"Already recieved"];
                    _p9.hidden = YES;
                } else {
                    [_dplustf setText:[[NSString stringWithFormat:@"%lf", finalValue]substringToIndex:5]];
                    _p9.hidden = NO;
                }
                
            } else {
                [_dplustf setText: @"Not possible"];
                _p9.hidden = YES;
                
            }
            dplus = NO;
        }
        if (d == YES) {
            double newvalue = (([newValue doubleValue]) - 93.00) * 0.01;
            bool done = NO;
            if (newvalue < 0) {
                double finalValue = 0.0;
                for (double i = 0; i <= 100; i = i + 0.1) {
                    double current_add = ([_remaining doubleValue] * 0.01) * (i);
                    if (done == NO && [_current_total_points doubleValue] + current_add >= [newValue doubleValue]) {
                        finalValue = i;
                        done = YES;
                    }
                }
                if (finalValue == 0) {
                    [_dtf setText: @"Already recieved"];
                    _p10.hidden = YES;
                } else {
                    [_dtf setText:[[NSString stringWithFormat:@"%lf", finalValue]substringToIndex:5]];
                    _p10.hidden = NO;
                }
                
            } else {
                [_dtf setText: @"Not possible"];
                _p10.hidden = YES;
                
            }
            d = NO;
        }
        if (dminus == YES) {
            double newvalue = (([newValue doubleValue]) - 93.00) * 0.01;
            bool done = NO;
            if (newvalue < 0) {
                double finalValue = 0.0;
                for (double i = 0; i <= 100; i = i + 0.1) {
                    double current_add = ([_remaining doubleValue] * 0.01) * (i);
                    if (done == NO && [_current_total_points doubleValue] + current_add >= [newValue doubleValue]) {
                        finalValue = i;
                        done = YES;
                    }
                }
                if (finalValue == 0) {
                    [_dminustf setText: @"Already recieved"];
                    _p11.hidden = YES;
                } else {
                    [_dminustf setText:[[NSString stringWithFormat:@"%lf", finalValue]substringToIndex:5]];
                    _p11.hidden = NO;
                }
                
            } else {
                [_dminustf setText: @"Not possible"];
                _p11.hidden = YES;
                
            }
            dminus = NO;
        }
    
    }


    }
    
    
}




@end