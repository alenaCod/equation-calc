//
//  ViewController.m
//  QuadraticEquetionCalc
//
//  Created by Sveta on 3/21/18.
//  Copyright © 2018 Alena. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  self.notRoot.hidden = YES;
  self.oneRoot.hidden = YES;
  self.twoRoot.hidden = YES;
  // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}


- (IBAction)ClearAll:(UIButton *)sender {
  self.aText.text = @"";
  self.bText.text = @"";
  self.cText.text = @"";
  self.notRoot.hidden = YES;
  self.oneRoot.hidden = YES;
  self.twoRoot.hidden = YES;
}

- (IBAction)SeeResult:(UIButton *)sender {
  self.a = [self.aText.text doubleValue];
  self.b = [self.bText.text doubleValue];
  self.c = [self.cText.text doubleValue];
 
  if ((self.b == 0 )|| (self.a == 0 && self.c == 0)) {
      self.notRoot.hidden = NO;
      self.oneRoot.hidden = YES;
      self.twoRoot.hidden = YES;
      self.notRoot.text = @"not roots";
        
        printf("Корней нет.\n");
  } else if(self.a == 0){
      double x1 = -self.c / self.b;
      self.notRoot.hidden = YES;
      self.oneRoot.hidden = NO;
      self.twoRoot.hidden = YES;
      self.oneRoot.text = [NSString stringWithFormat:@"One root x = %.2lf",x1];
  }
  else {
        double d = self.b * self.b - 4 * self.a * self.c;
        if(d > 0){
        double x1 = (-self.b + sqrt(d)) / (2 * self.a);
        double x2 = (-self.b - sqrt(d)) / (2 * self.a);
        self.notRoot.hidden = YES;
        self.oneRoot.hidden = YES;
        self.twoRoot.hidden = NO;
        self.twoRoot.text = [NSString stringWithFormat:@" two roots D > 0  x1 = %.2lf, x2 = %.2lf", x1,x2];
            printf("Уравнение имеет два корня: %lf и %lf\n", x1, x2);
          
        }
        else if(d == 0) {
          double x1 = -self.b / (2 * self.a);
          self.notRoot.hidden = YES;
          self.oneRoot.hidden = NO;
          self.twoRoot.hidden = YES;
          self.oneRoot.text = [NSString stringWithFormat:@"D = 0 One root x = %.2lf",x1];
            printf("Уравнение имеет один корень: %lf\n", x1);
        }
         else {
           self.notRoot.hidden = NO;
           self.oneRoot.hidden = YES;
           self.twoRoot.hidden = YES;
           self.notRoot.text = @" D < 0 not roots";
          printf("Корней нет.\n");
        }
       }
}
@end
