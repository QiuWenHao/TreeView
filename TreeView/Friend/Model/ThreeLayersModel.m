//
//  ThreeLayersModel.m
//  TreeView
//
//  Created by wenHao Qiu on 2018/4/4.
//  Copyright © 2018年 文豪. All rights reserved.
//  github下载地址 https://github.com/QiuWenHao/TreeView
//  QQ：664952091 有问题欢迎探讨
//

#import "ThreeLayersModel.h"

@implementation ThreeLayersModel

- (ThreeLayersModel *)createDataWithNodeLevel:(int)nodeLevel
                                         type:(int)type
                                     sonNodes:(NSMutableArray *)sonNodes
                                   isExpanded:(BOOL)isExpanded
                                  headImgPath:(NSString *)headImgPath
                                   headImgUrl:(NSURL *)headImgUrl
                                         name:(NSString *)name
                                       sonCnt:(NSString *)sonCnt
                                     signture:(NSString *)signture{
    self.nodeLevel = nodeLevel;
    self.type = type;
    self.sonNodes = sonNodes;
    self.isExpanded = isExpanded;
    self.headImgPath = headImgPath;
    self.headImgUrl = headImgUrl;
    self.name = name;
    self.sonCnt = sonCnt;
    self.signture = signture;
    return self;
    
}

@end
