//
//  SecondLayerTableViewCell.m
//  TreeView
//
//  Created by wenHao Qiu on 2018/4/4.
//  Copyright © 2018年 文豪. All rights reserved.
//  github下载地址 https://github.com/QiuWenHao/TreeView
//  QQ：664952091 有问题欢迎探讨
//

#import "SecondLayerTableViewCell.h"
#import "UIView+Extension.h"

@implementation SecondLayerTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self createUI];
    }
    return self;
}
- (void)createUI {
    _arrowView = [[UIImageView alloc] initWithFrame:CGRectMake(15, 12, 20, 20)];
    [_arrowView setImage:[UIImage imageNamed:@"the_arrow"]];
    _nameLabel = [[UILabel alloc] initWithFrame:CGRectMake(50, 2, 300, 40)];
    _nameLabel.font = [UIFont systemFontOfSize:18];
    _sonCount = [[UILabel alloc]initWithFrame:CGRectMake(340, 12, 20, 20)];
    [self.contentView addSubview:_arrowView];
    [self.contentView addSubview:_nameLabel];
    [self.contentView addSubview:_sonCount];
}

- (void)drawRect:(CGRect)rect{
    int addX = _node.nodeLevel*25; //根据节点所在的层次计算平移距离
    CGRect arrowFrame = _arrowView.frame;
    arrowFrame.origin.x = viewWidthNew(15) + addX;//将15等比例扩大缩小
    _arrowView.frame = arrowFrame;
    
    CGRect nameFrame = _nameLabel.frame;
    nameFrame.origin.x = viewWidthNew(50) + addX;
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
