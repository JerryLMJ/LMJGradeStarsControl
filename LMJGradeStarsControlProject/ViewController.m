//
//  ViewController.m
//  LMJGradeStarsControl
//
//  Created by MajorLi on 15/5/4.
//  Copyright (c) 2015年 iOS开发者公会. All rights reserved.
//
//  iOS开发者公会-技术1群 QQ群号：87440292
//  iOS开发者公会-技术2群 QQ群号：232702419
//  iOS开发者公会-议事区  QQ群号：413102158
//

#import "ViewController.h"

#import "LMJGradeStarsControl.h"

@interface ViewController () <LMJGradeStarsControlDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    LMJGradeStarsControl * control = [[LMJGradeStarsControl alloc] initWithFrame:CGRectMake(20, 50, 200, 30) totalStars:5 starSize:20];
    control.delegate = self;
    control.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:control];
    
    
    LMJGradeStarsControl * control2 = [[LMJGradeStarsControl alloc] initWithFrame:CGRectMake(20, 100, 200, 30) defaultSelectedStatIndex:2 totalStars:5 starSize:20];
    control2.delegate = self;
    control2.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:control2];
    
}

- (void)gradeStarsControl:(LMJGradeStarsControl *)gradeStarsControl selectedStars:(NSInteger)stars{
    NSLog(@"You has selected %ld stars",stars);
}



@end
