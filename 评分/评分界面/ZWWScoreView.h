//
//  ZWWScoreView.h
//  评分
//
//  Created by 张伟伟 on 16/7/4.
//  Copyright © 2016年 张伟伟. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ZWWStarView.h"

@protocol ZWWScoreViewDelegate <NSObject>

@required

-(void)starRatingView:(ZWWStarView *)view score:(float)score;
-(void)backClick;
-(void)tijiao;

@end

@interface ZWWScoreView : UIView <ZWWStarViewDelegate>

@property (nonatomic ,strong) UILabel *scoreLabel;
@property (nonatomic, strong) UIView *coverView;
@property (nonatomic, strong) UIButton *btn;
@property (nonatomic, strong) UIButton *backBtn;
@property (nonatomic, strong) UIImageView *scoreView;
@property (nonatomic, strong) ZWWStarView *starView;

@end
