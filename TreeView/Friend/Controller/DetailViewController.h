//
//  DetailViewController.h
//  TreeView
//
//  Created by wenHao Qiu on 2018/4/4.
//  Copyright © 2018年 文豪. All rights reserved.
//  github下载地址 https://github.com/QiuWenHao/TreeView
//  QQ：664952091 有问题欢迎探讨
//

#import "BaseViewController.h"
#import "ThreeLayersModel.h"

@interface DetailViewController : BaseViewController

@property(strong, nonatomic) ThreeLayersModel *node;

@property(strong, nonatomic) UIImageView *headImage;
@property(strong, nonatomic) UILabel * signtureLabel;

@end
