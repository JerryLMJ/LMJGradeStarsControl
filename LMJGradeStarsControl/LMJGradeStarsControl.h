//
//  LMJGradeStarsControl.h
//  LMJGradeStarsControl
//
//  Created by MajorLi on 15/5/4.
//  Copyright (c) 2015年 iOS开发者公会. All rights reserved.
//
//  iOS开发者公会-技术1群 QQ群号：87440292
//  iOS开发者公会-技术2群 QQ群号：232702419
//  iOS开发者公会-议事区  QQ群号：413102158
//

#import <UIKit/UIKit.h>

@class LMJGradeStarsControl;

@protocol LMJGradeStarsControlDelegate <NSObject>

- (void)gradeStarsControl:(LMJGradeStarsControl *)gradeStarsControl selectedStars:(NSInteger)stars;

@end

@interface LMJGradeStarsControl : UIView

- (id)initWithFrame:(CGRect)frame totalStars:(NSInteger)totalStars starSize:(CGFloat)size;

@property (nonatomic,assign) id <LMJGradeStarsControlDelegate> delegate;

@end
