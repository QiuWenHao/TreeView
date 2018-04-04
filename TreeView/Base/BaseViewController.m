//
//  BaseViewController.m
//  TreeView
//
//  Created by wenHao Qiu on 2018/4/4.
//  Copyright © 2018年 文豪. All rights reserved.
//  github下载地址 https://github.com/QiuWenHao/TreeView
//  QQ：664952091 有问题欢迎探讨
//

#import "BaseViewController.h"

#define ScreenWidth                   [[UIScreen mainScreen] bounds].size.width

@interface BaseViewController ()

@end

@implementation BaseViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.navBar.items = @[self.navItem];
    
    [self.navBar setBackgroundImage:[UIImage new] forBarMetrics:UIBarMetricsDefault];
    
    [self createTableView];
    
    [self.view addSubview:self.navBar];
}

- (UINavigationBar *)navBar {
    
    if (!_navBar) {
        
        _navBar = [[UINavigationBar alloc]initWithFrame:CGRectMake(0, 20, ScreenWidth, 64)];
    }
    
    return _navBar;
    
}

- (UINavigationItem *)navItem {
    
    if (!_navItem) {
        
        _navItem = [[UINavigationItem alloc]init];
    }
    
    return _navItem;
}

- (void)setTitle:(NSString *)title {
    
    self.navItem.title = title;
}

- (NSString *)title {
    
    return self.navItem.title;
}

- (void)createTableView {
    
    UITableView *tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 64, 375, 667 - 64) style:UITableViewStylePlain];
    
    self.tableView = tableView;
    
    tableView.dataSource = self;
    
    tableView.delegate  = self;
    
    tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    
    [self.view addSubview:tableView];
    
    [self registerCell];
}

- (void)registerCell
{
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return self.dataArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    cell.textLabel.textColor = [UIColor blackColor];
    
    cell.textLabel.text = self.dataArray[indexPath.row];
    
    cell.backgroundColor = [UIColor clearColor];
    
    return cell;
    
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
