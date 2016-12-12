
//
//  sdasds.m
//  评分
//
//  Created by 张伟伟 on 16/7/4.
//  Copyright © 2016年 张伟伟. All rights reserved.
//

#import "sdasds.h"

#define viewW [UIScreen mainScreen].bounds.size.width
#define viewH [UIScreen mainScreen].bounds.size.height
#define scoreViewH 170
#define scoreViewW ([UIScreen mainScreen].bounds.size.width - 2*spacingLiftandRight)
#define spacingLiftandRight 20  // 左右间距
#define spacingUandD 10   //上下间距
#define btnW 170
#define btnH 40
#define backBtnW 20
#define backBtnH 20
#define starViewH 65
#define scoreLabelW 70
#define scoreLabelH 30

@implementation sdasds

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self createView];
    }
    return self;
}

-(void)createView {
    self.coverView = [[UIView alloc] init];
    self.coverView.frame = [UIScreen mainScreen].bounds;
    self.coverView.backgroundColor = [UIColor lightGrayColor];
    [self.superview addSubview:self.coverView];

    self.scoreView = [[UIImageView alloc] initWithFrame:CGRectMake(spacingLiftandRight, (viewH - scoreViewH)/2, scoreViewW, scoreViewH)];
    self.scoreView.image = [UIImage imageNamed:@"scoreView.jpg"];
    self.scoreView.layer.cornerRadius = 15;
    self.scoreView.layer.masksToBounds = YES;
    
    [self.coverView addSubview:self.scoreView];
    
    self.btn = [[UIButton alloc] initWithFrame:CGRectMake((viewW - scoreViewH)/2, viewH/2 + scoreViewH/2 - spacingUandD - btnH, btnW, btnH)];
    [self.btn setTitle:@"确 定" forState:UIControlStateNormal];
    self.btn.titleLabel.font = [UIFont systemFontOfSize:23.0f];
    self.btn.titleLabel.textAlignment = NSTextAlignmentCenter;
    [self.btn addTarget:self action:@selector(tijiao) forControlEvents:UIControlEventTouchUpInside];
    self.btn.layer.cornerRadius = 12;
    self.btn.layer.masksToBounds = YES;
    [self.coverView addSubview:self.btn];
    
    self.starView = [[ZWWStarView alloc] initWithFrame:CGRectMake(2*spacingLiftandRight, (viewH - scoreViewH + spacingLiftandRight)/2, scoreViewW - 2*spacingLiftandRight, starViewH)];
    self.starView.delegate = self;
    self.starView.foregroundViewColor = [UIColor orangeColor];
    [self.coverView addSubview:self.starView];
    
    self.scoreLabel = [[UILabel alloc] initWithFrame:CGRectMake((viewW - scoreLabelW)/2, (viewH - scoreLabelH)/2 + 13, scoreLabelW, scoreLabelH)];
    self.scoreLabel.textAlignment = NSTextAlignmentCenter;
    self.scoreLabel.text = @"10.0";
    self.scoreLabel.font = [UIFont systemFontOfSize:23.0f];
    [self.coverView addSubview:self.scoreLabel];
    
    self.backBtn = [[UIButton alloc] initWithFrame:CGRectMake((viewW + scoreViewW - backBtnW)/2 , (viewH - scoreViewH - backBtnH)/2, backBtnW, backBtnW)];
    self.backBtn.backgroundColor = [UIColor redColor];
    [self.backBtn addTarget:self action:@selector(backClick) forControlEvents:UIControlEventTouchUpInside];
    [self.backBtn setImage:[UIImage imageNamed:@"backBtn.png"] forState:UIControlStateNormal];
    self.backBtn.layer.cornerRadius = backBtnW/2;
    self.backBtn.layer.masksToBounds = YES;
    [self.coverView addSubview:self.backBtn];
}

-(void)backClick {
    [self.coverView removeFromSuperview];
}

-(void)tijiao {
    [self.coverView removeFromSuperview];
}

-(void)starRatingView:(ZWWStarView *)view score:(float)score {
    self.scoreLabel.text = [NSString stringWithFormat:@"%0.1f",score * 10 ];
}

@end
