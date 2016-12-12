//
//  sdasds.h
//  评分
//
//  Created by 张伟伟 on 16/7/4.
//  Copyright © 2016年 张伟伟. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ZWWStarView.h"

@interface sdasds : UIView <ZWWStarViewDelegate>

@property (nonatomic ,strong) UILabel *scoreLabel;
@property (nonatomic, strong) UIView *coverView;
@property (nonatomic, strong) UIButton *btn;
@property (nonatomic, strong) UIButton *backBtn;
@property (nonatomic, strong) UIImageView *scoreView;
@property (nonatomic, strong) ZWWStarView *starView;

@end
