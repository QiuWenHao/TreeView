//
//  DetailViewController.m
//  TreeView
//
//  Created by wenHao Qiu on 2018/4/4.
//  Copyright © 2018年 文豪. All rights reserved.
//  github下载地址 https://github.com/QiuWenHao/TreeView
//  QQ：664952091 有问题欢迎探讨
//

#import "DetailViewController.h"
#import "UIView+Extension.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    self.title = self.node.name;
    
    [self initView];
}

- (void)initView {
    _headImage  = [[UIImageView alloc] initWithFrame:CGRectMake((ScreenWidth - 200)/2, (ScreenHeight - 270)/2, 200, 200)];
    [_headImage setImage:[UIImage imageNamed:self.node.headImgPath]];
    _signtureLabel = [[UILabel alloc] initWithFrame:CGRectMake((ScreenWidth - 175)/2, (ScreenHeight - 270)/2 + 200, 175, 70)];
    _signtureLabel.text = self.node.signture;
    _signtureLabel.numberOfLines = 0;
    _signtureLabel.textAlignment = NSTextAlignmentCenter;
    _signtureLabel.textColor = [UIColor greenColor];
    [self.view addSubview:_headImage];
    [self.view addSubview:_signtureLabel];
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
