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

// 设置star的计数起点（全局影响）:也就是第一颗星星的序号以0还是1或者其他的数字作为起点
#define LMJGradeStarsControlStartIndex 0

@class LMJGradeStarsControl;

@protocol LMJGradeStarsControlDelegate <NSObject>

- (void)gradeStarsControl:(LMJGradeStarsControl *)gradeStarsControl selectedStars:(NSInteger)stars;

@end

@interface LMJGradeStarsControl : UIView

- (id)initWithFrame:(CGRect)frame totalStars:(NSInteger)totalStars starSize:(CGFloat)size;
- (id)initWithFrame:(CGRect)frame defaultSelectedStatIndex:(NSInteger)index totalStars:(NSInteger)totalStars starSize:(CGFloat)size;

- (void)setSelectedStarIndex:(NSUInteger)index; // 手动选择星级，同样会有代理函数的回调

@property (nonatomic,assign) id <LMJGradeStarsControlDelegate> delegate;

@end
