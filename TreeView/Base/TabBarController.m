//
//  TabBarController.m
//  TreeView
//
//  Created by wenHao Qiu on 2018/4/4.
//  Copyright © 2018年 文豪. All rights reserved.
//  github下载地址 https://github.com/QiuWenHao/TreeView
//  QQ：664952091 有问题欢迎探讨
//

#import "TabBarController.h"
#import "TwoViewController.h"
#import "ThreeViewController.h"
#import "NavigationController.h"

@interface TabBarController ()

@end

@implementation TabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tabBar.tintColor = [UIColor orangeColor];
    
    [self setupTabBar];
}

- (void)setupTabBar {
    
    TwoViewController *two = [[TwoViewController alloc] init];
    
    two.title = @"二级分组";
    
    [self setTabBarWithController:two title:@"二级" image:@"my_normal" selectedImage:@"my_selected"];
    
    ThreeViewController *three = [[ThreeViewController alloc] init];
    
    three.title = @"三级分组";
    
    [self setTabBarWithController:three title:@"三级" image:@"my_normal" selectedImage:@"my_selected"];
}

- (void)setTabBarWithController:(BaseViewController *)vc title:(NSString *)title image:(NSString *)image selectedImage:(NSString *)selectedImage
{
    
    NavigationController *nav = [[NavigationController alloc] initWithRootViewController:vc];
    
    nav.tabBarItem.title = title;
    
    nav.tabBarItem.selectedImage = [UIImage imageNamed:selectedImage];
    
    nav.tabBarItem.image = [UIImage imageNamed:image];
    
    [self addChildViewController:nav];
    
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
