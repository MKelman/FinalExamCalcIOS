//
//  UIViewController+SubjectAdd.m
//  FinalExamCalculator
//
//  Created by Mitchell Kelman on 5/3/15.
//  Copyright (c) 2015 Mitchell Kelman. All rights reserved.
//

#import "SubjectAdd.h"

@interface SubjectAdd ()

@end

@implementation SubjectAdd

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}


- (IBAction)ResetButton:(id)sender {
    _fieldOne.text =   @"";
    _fieldTwo.text =   @"";
    _fieldThree.text = @"";
    _fieldFour.text =  @"";
    _fieldFive.text =  @"";
    _fieldSix.text =   @"";

}

- (IBAction)NextButton:(id)sender {
    if ([_fieldOne.text isEqual:@""]) {
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Please enter at least one category that makes up your grade (without your final)." message:@"" delegate:nil cancelButtonTitle:nil otherButtonTitles:nil];
        [alert show];
        [self performSelector:@selector(dismiss:) withObject:alert afterDelay:3.0];
        
    } else {
        [self performSegueWithIdentifier:@"ToPercentageCategory" sender:self];
    }
}

- (IBAction)SettingsPage:(id)sender {
    [self performSegueWithIdentifier:@"toSettings" sender:self];
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    [self.view endEditing:YES];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    CategoryLayout *CL = [segue destinationViewController];
    CL.subOne = _fieldOne.text;
    CL.subTwo = _fieldTwo.text;
    CL.subThree = _fieldThree.text;
    CL.subFour = _fieldFour.text;
    CL.subFive = _fieldFive.text;
    CL.subSix = _fieldSix.text;
}

-(void)dismiss:(UIAlertView*)alert{
    [alert dismissWithClickedButtonIndex:0 animated:YES];
}


@end

