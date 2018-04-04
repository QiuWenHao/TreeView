//
//  ThirdLayerTableViewCell.m
//  TreeView
//
//  Created by wenHao Qiu on 2018/4/4.
//  Copyright © 2018年 文豪. All rights reserved.
//  github下载地址 https://github.com/QiuWenHao/TreeView
//  QQ：664952091 有问题欢迎探讨
//

#import "ThirdLayerTableViewCell.h"
#import "UIView+Extension.h"

@implementation ThirdLayerTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self createUI];
    }
    return self;
}
- (void)createUI {
    _headImage = [[UIImageView alloc] initWithFrame:CGRectMake(15, 2, 40, 40)];
    _headImage.layer.cornerRadius = _headImage.frame.size.width/2;
    _headImage.layer.masksToBounds = YES;
    _nameLabel = [[UILabel alloc] initWithFrame:CGRectMake(70, 2, 300, 22)];
    _nameLabel.font = [UIFont systemFontOfSize:15];
    _signture = [[UILabel alloc]initWithFrame:CGRectMake(70, 24, 300, 18)];
    _signture.font = [UIFont systemFontOfSize:13];
    _signture.textColor = [UIColor yellowColor];
    [self.contentView addSubview:_headImage];
    [self.contentView addSubview:_nameLabel];
    [self.contentView addSubview:_signture];
}

- (void)drawRect:(CGRect)rect{
    int addX = _node.nodeLevel*25; //根据节点所在的层次计算平移距离
    CGRect headFrame = _headImage.frame;
    headFrame.origin.x = viewWidthNew(15) + addX;//将15等比例扩大缩小
    _headImage.frame = headFrame;
    
    CGRect nameFrame = _nameLabel.frame;
    nameFrame.origin.x = viewWidthNew(70) + addX;
    _nameLabel.frame = nameFrame;
    
    CGRect signtureFrame = _signture.frame;
    signtureFrame.origin.x = viewWidthNew(70) + addX;
    _signture.frame = signtureFrame;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
