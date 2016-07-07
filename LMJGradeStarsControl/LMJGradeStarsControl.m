//
//  LMJGradeStarsControl.m
//  LMJGradeStarsControl
//
//  Created by MajorLi on 15/5/4.
//  Copyright (c) 2015年 iOS开发者公会. All rights reserved.
//
//  iOS开发者公会-技术1群 QQ群号：87440292
//  iOS开发者公会-技术2群 QQ群号：232702419
//  iOS开发者公会-议事区  QQ群号：413102158
//

#import "LMJGradeStarsControl.h"

@implementation LMJGradeStarsControl
{
    NSInteger _totalStars;
    CGFloat   _size;
    
    NSMutableArray * _starsBtnArr;
}

- (id)initWithFrame:(CGRect)frame totalStars:(NSInteger)totalStars starSize:(CGFloat)size{
    self = [super initWithFrame:frame];
    
    _totalStars = totalStars;
    _size       = size;
    
    if (self) {
        
        _starsBtnArr = [NSMutableArray array];
        
        [self buildStars];
    }
    return self;
}


- (void)buildStars{
    CGFloat starDistance = self.frame.size.width / (_totalStars +1);
    
    for (int i = 0; i < _totalStars; i++) {
        
        UIButton * starBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [starBtn setFrame:CGRectMake(0, 0, _size +10, _size +10)];
        [starBtn setCenter:CGPointMake(starDistance * (i+1), self.frame.size.height/2)];
        [starBtn setBackgroundColor:[UIColor clearColor]];
        [starBtn setImage:[UIImage imageNamed:@"star_off"] forState:UIControlStateNormal];
        [starBtn setImage:[UIImage imageNamed:@"star_off"] forState:UIControlStateHighlighted];
        [starBtn setImageEdgeInsets:UIEdgeInsetsMake(5, 5, 5, 5)];
        [starBtn setTag:i];
        [starBtn setHighlighted:NO];
        [starBtn addTarget:self action:@selector(clickStarBtn:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:starBtn];
        
        [_starsBtnArr addObject:starBtn];
    }
}


- (void)clickStarBtn:(UIButton *)button{
    
    for (int i = 0; i < _starsBtnArr.count; i++) {
        
        UIButton * btn = _starsBtnArr[i];
        
        if (btn.tag <= button.tag) {
            [btn setImage:[UIImage imageNamed:@"star_on"] forState:UIControlStateNormal];
            [btn setImage:[UIImage imageNamed:@"star_on"] forState:UIControlStateHighlighted];;
        }else{
            [btn setImage:[UIImage imageNamed:@"star_off"] forState:UIControlStateNormal];
            [btn setImage:[UIImage imageNamed:@"star_off"] forState:UIControlStateHighlighted];
        }
    }
    
    if ([self.delegate respondsToSelector:@selector(gradeStarsControl:selectedStars:)]) {
        [self.delegate gradeStarsControl:self selectedStars:(button.tag+1)];
    }
}

@end
