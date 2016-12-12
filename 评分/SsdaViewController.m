//
//  SsdaViewController.m
//  评分
//
//  Created by 张伟伟 on 16/7/4.
//  Copyright © 2016年 张伟伟. All rights reserved.
//

#import "SsdaViewController.h"
#import "sdasds.h"

@interface SsdaViewController ()

@property (nonatomic, strong) sdasds *vc;

@end

@implementation SsdaViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    // Do any additional setup after loading the view.
}

- (IBAction)click:(id)sender {
    self.vc = [[sdasds alloc] initWithFrame:self.view.frame];
    [self.view addSubview:self.vc];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
