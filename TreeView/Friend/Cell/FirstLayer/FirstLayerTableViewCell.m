//
//  FirstLayerTableViewCell.m
//  TreeView
//
//  Created by wenHao Qiu on 2018/4/4.
//  Copyright © 2018年 文豪. All rights reserved.
//  github下载地址 https://github.com/QiuWenHao/TreeView
//  QQ：664952091 有问题欢迎探讨
//

#import "FirstLayerTableViewCell.h"
#import "UIView+Extension.h"

@implementation FirstLayerTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self createUI];
    }
    return self;
}
- (void)createUI {
    _iconImage = [[UIImageView alloc] initWithFrame:CGRectMake(15, 2, 40, 40)];
    _iconImage.layer.cornerRadius = 8;
    _iconImage.layer.masksToBounds = YES;
    _nameLabel = [[UILabel alloc] initWithFrame:CGRectMake(70, 2, 300, 40)];
    _nameLabel.font = [UIFont systemFontOfSize:21];
    _arrowView = [[UIImageView alloc]initWithFrame:CGRectMake(340, 12, 20, 20)];
    [_arrowView setImage:[UIImage imageNamed:@"the_arrow"]];
    [self.contentView addSubview:_iconImage];
    [self.contentView addSubview:_nameLabel];
    [self.contentView addSubview:_arrowView];
}

-(void)drawRect:(CGRect)rect{
    int addX = _node.nodeLevel*25; //根据节点所在的层次计算平移距离
    CGRect iconFrame = _iconImage.frame;
    iconFrame.origin.x = viewWidthNew(15) + addX;//将15等比例扩大缩小
    _iconImage.frame = iconFrame;
    
    CGRect nameFrame = _nameLabel.frame;
    nameFrame.origin.x = viewWidthNew(70) + addX;
    _nameLabel.frame = nameFrame;
    
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
