//
//  UIViewController+FinalBreakDown.h
//  FinalExamCalculator
//
//  Created by Mitchell Kelman on 5/4/15.
//  Copyright (c) 2015 Mitchell Kelman. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FinalBreakDown : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *atf;
@property (weak, nonatomic) IBOutlet UILabel *aminustf;
@property (weak, nonatomic) IBOutlet UILabel *bplustf;
@property (weak, nonatomic) IBOutlet UILabel *btf;
@property (weak, nonatomic) IBOutlet UILabel *bminustf;
@property (weak, nonatomic) IBOutlet UILabel *cplustf;
@property (weak, nonatomic) IBOutlet UILabel *ctf;
@property (weak, nonatomic) IBOutlet UILabel *cminustf;
@property (weak, nonatomic) IBOutlet UILabel *dplustf;
@property (weak, nonatomic) IBOutlet UILabel *dtf;
@property (weak, nonatomic) IBOutlet UILabel *dminustf;

@property (weak, nonatomic) IBOutlet UILabel *p1;
@property (weak, nonatomic) IBOutlet UILabel *p2;
@property (weak, nonatomic) IBOutlet UILabel *p3;
@property (weak, nonatomic) IBOutlet UILabel *p4;
@property (weak, nonatomic) IBOutlet UILabel *p5;
@property (weak, nonatomic) IBOutlet UILabel *p6;
@property (weak, nonatomic) IBOutlet UILabel *p7;
@property (weak, nonatomic) IBOutlet UILabel *p8;
@property (weak, nonatomic) IBOutlet UILabel *p9;
@property (weak, nonatomic) IBOutlet UILabel *p10;
@property (weak, nonatomic) IBOutlet UILabel *p11;

- (IBAction)curAValue:(id)sender;
- (IBAction)curAMinusValue:(id)sender;
- (IBAction)curBPlusValue:(id)sender;
- (IBAction)curBValue:(id)sender;
- (IBAction)curBMinusValue:(id)sender;
- (IBAction)curCPlusValue:(id)sender;
- (IBAction)curCValue:(id)sender;
- (IBAction)curCMinusValue:(id)sender;
- (IBAction)curDPlusValue:(id)sender;
- (IBAction)curDValue:(id)sender;
- (IBAction)curDMinusValue:(id)sender;



@property(strong,nonatomic)NSString *dminus, *d, *dplus, *cminus, *c,
    *cplus, *bminus, *b, *bplus, *aminus, *a;
@property(strong,nonatomic)NSString *remaining, *current_total_points;

@end
