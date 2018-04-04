//
//  SecondLayerTableViewCell.h
//  TreeView
//
//  Created by wenHao Qiu on 2018/4/4.
//  Copyright © 2018年 文豪. All rights reserved.
//  github下载地址 https://github.com/QiuWenHao/TreeView
//  QQ：664952091 有问题欢迎探讨
//

#import <UIKit/UIKit.h>
#import "ThreeLayersModel.h"

@interface SecondLayerTableViewCell : UITableViewCell

@property (strong, nonatomic) ThreeLayersModel *node;//data
@property (strong, nonatomic) UIImageView *arrowView;//箭头
@property (strong, nonatomic) UILabel *sonCount;//叶子数
@property (strong, nonatomic) UILabel *nameLabel;

@end
