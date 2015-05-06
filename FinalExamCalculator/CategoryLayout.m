//
//  UIViewController+CategoryLayout.m
//  FinalExamCalculator
//
//  Created by Mitchell Kelman on 5/3/15.
//  Copyright (c) 2015 Mitchell Kelman. All rights reserved.
//

#import "CategoryLayout.h"

@interface CategoryLayout ()

@end

@implementation CategoryLayout

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"" style:UIBarButtonItemStylePlain target:nil action:nil];

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
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Please fill in the breakdown for each category that your class is made up of." message:@"" delegate:nil cancelButtonTitle:nil otherButtonTitles:nil];
        [alert show];
        [self performSelector:@selector(dismiss:) withObject:alert afterDelay:3.0];
    } else {
        [self performSegueWithIdentifier:@"RecievedInCategory" sender:self];
    }
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    CurrentGrade *CG = [segue destinationViewController];
    if ([_oneTF.text isEqualToString:@""]) {
        CG.subPerOne = @"0.00";
    } else {
        CG.subPerOne = _oneTF.text;
    }
    
    if ([_twoTF.text isEqualToString:@""]) {
        CG.subPerTwo = @"0.00";
    } else {
        CG.subPerTwo = _twoTF.text;
    }
    if ([_threeTF.text isEqualToString:@""]) {
        CG.subPerThree = @"0.00";
    } else {
        CG.subPerThree = _threeTF.text;
    }
    if ([_fourTF.text isEqualToString:@""]) {
        CG.subPerFour = @"0.00";
    } else {
        CG.subPerFour = _fourTF.text;
    }
    if ([_fiveTF.text isEqualToString:@""]) {
        CG.subPerFive = @"0.00";
    } else {
        CG.subPerFive = _fiveTF.text;
    }
    if ([_sixTF.text isEqualToString:@""]) {
        CG.subPerSix = @"0.00";
    } else {
        CG.subPerSix = _sixTF.text;
    }
    
    CG.subOne = _subOne;
    CG.subTwo = _subTwo;
    CG.subThree = _subThree;
    CG.subFour = _subFour;
    CG.subFive = _subFive;
    CG.subSix = _subSix;
}

-(void)dismiss:(UIAlertView*)alert{
    [alert dismissWithClickedButtonIndex:0 animated:YES];
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    [self.view endEditing:YES];
}

@end

