//
//  ThirdLayerTableViewCell.h
//  TreeView
//
//  Created by wenHao Qiu on 2018/4/4.
//  Copyright © 2018年 文豪. All rights reserved.
//  github下载地址 https://github.com/QiuWenHao/TreeView
//  QQ：664952091 有问题欢迎探讨
//

#import <UIKit/UIKit.h>
#import "ThreeLayersModel.h"

@interface ThirdLayerTableViewCell : UITableViewCell

@property (strong, nonatomic) ThreeLayersModel *node;//data
@property (strong, nonatomic) UIImageView *headImage;
@property (strong, nonatomic) UILabel *signture;//个性签名
@property (strong, nonatomic) UILabel *nameLabel;

@end
