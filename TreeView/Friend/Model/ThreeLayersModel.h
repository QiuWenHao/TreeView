//
//  ThreeLayersModel.h
//  TreeView
//
//  Created by wenHao Qiu on 2018/4/4.
//  Copyright © 2018年 文豪. All rights reserved.
//  github下载地址 https://github.com/QiuWenHao/TreeView
//  QQ：664952091 有问题欢迎探讨
//

#import <Foundation/Foundation.h>

@interface ThreeLayersModel : NSObject

@property (assign, nonatomic) int nodeLevel; //节点所处层次
@property (assign, nonatomic) int type; //节点类型
@property (assign, nonatomic) BOOL isExpanded;//节点是否展开
@property (strong, nonatomic) NSMutableArray *sonNodes;//子节点
@property (copy, nonatomic) NSString *name;
@property (copy, nonatomic) NSString *headImgPath;//本地图片名,若不为空则优先于远程图片加载
@property (strong, nonatomic) NSURL *headImgUrl;//远程图片链接
@property (copy, nonatomic) NSString *sonCnt;//多少个数据
@property (copy, nonatomic) NSString *signture;//签名内容

- (ThreeLayersModel *)createDataWithNodeLevel:(int)nodeLevel
                                         type:(int)type
                                     sonNodes:(NSMutableArray*)sonNodes
                                   isExpanded:(BOOL)isExpanded
                                  headImgPath:(NSString *)headImgPath
                                   headImgUrl:(NSURL *)headImgUrl
                                         name:(NSString *)name
                                       sonCnt:(NSString *)sonCnt
                                     signture:(NSString *)signture;
@end
