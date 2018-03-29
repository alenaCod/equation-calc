//
//  ViewController.h
//  QuadraticEquetionCalc
//
//  Created by Sveta on 3/21/18.
//  Copyright © 2018 Alena. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *aText;
@property (weak, nonatomic) IBOutlet UITextField *bText;
@property (weak, nonatomic) IBOutlet UITextField *cText;
@property (weak, nonatomic) IBOutlet UILabel *notRoot;
@property (weak, nonatomic) IBOutlet UILabel *twoRoot;
@property (weak, nonatomic) IBOutlet UILabel *oneRoot;
@property(nonatomic) double a;
@property(nonatomic) double b;
@property(nonatomic) double c;


- (IBAction)ClearAll:(UIButton *)sender;
- (IBAction)SeeResult:(UIButton *)sender;

@end

