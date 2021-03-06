//
//  ZWWStarView.h
//  评分
//
//  Created by 张伟伟 on 16/7/4.
//  Copyright © 2016年 张伟伟. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ZWWStarView;

@protocol ZWWStarViewDelegate <NSObject>

@optional

-(void)starRatingView:(ZWWStarView *)view score:(float)score;

@end

@interface ZWWStarView : UIView

/**
 *  前景图填充颜色 默认clearColor
 */
@property (nonatomic, strong) UIColor *foregroundViewColor;
/**
 *  背景图填充颜色 默认clearColor
 */
@property (nonatomic, strong) UIColor *backgroundViewColor;

/**
 *  前景图名称 默认foregroundStar
 */
@property (nonatomic, copy) NSString *foregroundImageName;
/**
 *  背景图名称 默认backgroundStar
 */
@property (nonatomic, copy) NSString *backgroundImageName;

@property (nonatomic, weak) id <ZWWStarViewDelegate> delegate;

/**
 *  初始化SYStarRatingView
 *
 *  @param frame  Rectangles
 *  @param number 星星个数
 *
 *  @return TQStarRatingViewObject
 */
- (instancetype)initWithFrame:(CGRect)frame numberOfStar:(NSInteger)number;

/**
 *  设置控件分数
 *
 *  @param score     分数，必须在 0 － 1 之间
 *  @param isAnimate 是否启用动画
 */
- (void)setScore:(float)score withAnimation:(bool)isAnimate;

/**
 *  设置控件分数
 *
 *  @param score      分数，必须在 0 － 1 之间
 *  @param isAnimate  是否启用动画
 *  @param completion 动画完成block
 */
- (void)setScore:(float)score withAnimation:(bool)isAnimate completion:(void (^)(BOOL finished))completion;

@end


#define kNUMBER_OF_STAR  5
