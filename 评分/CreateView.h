//
//  CreateView.h
//  评分
//
//  Created by 张伟伟 on 16/7/4.
//  Copyright © 2016年 张伟伟. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "ZWWStarView.h"

@interface CreateView : NSObject <ZWWStarViewDelegate>

@property (nonatomic ,strong) UILabel *scoreLabel;
@property (nonatomic, strong) UIView *coverView;
@property (nonatomic, strong) UIButton *btn;
@property (nonatomic, strong) UIButton *backBtn;
@property (nonatomic, strong) UIImageView *scoreView;
@property (nonatomic, strong) ZWWStarView *starView;

-(void)tijiao;
-(void)backClick;
-(void)starRatingView:(ZWWStarView *)view score:(float)score;

@end
