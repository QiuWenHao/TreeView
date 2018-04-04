//
//  NavigationController.m
//  TreeView
//
//  Created by wenHao Qiu on 2018/4/4.
//  Copyright © 2018年 文豪. All rights reserved.
//  github下载地址 https://github.com/QiuWenHao/TreeView
//  QQ：664952091 有问题欢迎探讨
//

#import "NavigationController.h"
#import "BaseViewController.h"

@interface NavigationController ()

@end

@implementation NavigationController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    //将系统的导航栏隐藏，否则自定义的导航栏不显示
    self.navigationBar.hidden = YES;
}

- (void)pushViewController:(BaseViewController *)viewController animated:(BOOL)animated {
    
    if (self.childViewControllers.count > 0) {
        
        viewController.hidesBottomBarWhenPushed = YES;
        
        if ([viewController isKindOfClass:[BaseViewController class]]) {
            
            NSString *title = @"";
            
            if (self.viewControllers.count == 1) {
                
                title = self.viewControllers.firstObject.title;
            }else {
                
                title = @"返回";
            }
            
            UIButton *button = [[UIButton alloc] init];
            
            [button setTitle:title forState:UIControlStateNormal];
            
            [button setTitleColor:[UIColor darkGrayColor] forState:UIControlStateNormal];
            
            [button setTitleColor:[UIColor orangeColor] forState:UIControlStateHighlighted];
            
            button.titleLabel.font = [UIFont systemFontOfSize:16];
            
            [button sizeToFit];
            
            [button addTarget:self action:@selector(pop) forControlEvents:UIControlEventTouchUpInside];
            
            viewController.navItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:button];
            
        }
        
    }
    
    [super pushViewController:viewController animated:animated];
}

- (void)pop {
    
    [self popViewControllerAnimated:YES];
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
