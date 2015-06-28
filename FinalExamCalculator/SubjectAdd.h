//
//  UIViewController+SubjectAdd.h
//  FinalExamCalculator
//
//  Created by Mitchell Kelman on 5/3/15.
//  Copyright (c) 2015 Mitchell Kelman. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CategoryLayout.h"

@interface SubjectAdd : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *fieldOne;
@property (weak, nonatomic) IBOutlet UITextField *fieldTwo;
@property (weak, nonatomic) IBOutlet UITextField *fieldThree;
@property (weak, nonatomic) IBOutlet UITextField *fieldFour;
@property (weak, nonatomic) IBOutlet UITextField *fieldFive;
@property (weak, nonatomic) IBOutlet UITextField *fieldSix;
- (IBAction)ResetButton:(id)sender;
- (IBAction)NextButton:(id)sender;
- (IBAction)SettingsPage:(id)sender;


@end
