//
//  TwoViewController.m
//  TreeView
//
//  Created by wenHao Qiu on 2018/4/4.
//  Copyright © 2018年 文豪. All rights reserved.
//  github下载地址 https://github.com/QiuWenHao/TreeView
//  QQ：664952091 有问题欢迎探讨
//

#import "TwoViewController.h"
#import "FirstLayerTableViewCell.h"
#import "ThirdLayerTableViewCell.h"
#import "DetailViewController.h"

#define controllerHeightNew(h) (h) * self.view.frame.size.height/667.0f

@interface TwoViewController ()

@property(strong, nonatomic) NSArray *displayArray;   //保存要显示在界面

@end

@implementation TwoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    UIImageView *backImage = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 375, 667)];
    [backImage setImage:[UIImage imageNamed:@"beijing.jpg"]];
    self.tableView.backgroundColor = [UIColor clearColor];
    backImage.alpha = 0.2;
    [self.view addSubview:backImage];
    [self.view addSubview:self.tableView];
    [self addTestData];//添加演示数据
    [self reloadDataForDisplayArray];//初始化将要显示的数据
}

- (void)addTestData {
    
    //-----------------------第一大组----------------------
    ThreeLayersModel *node1 = [[ThreeLayersModel alloc]init];
    [node1 createDataWithNodeLevel:0 type:0 sonNodes:nil isExpanded:NO headImgPath:@"PentaKill" headImgUrl:nil name:@"英雄联盟五连杀" sonCnt:nil signture:nil];
    //----------------------第一大组第一个----------------------
    ThreeLayersModel *sub1Node1 = [[ThreeLayersModel alloc]init];
    [sub1Node1 createDataWithNodeLevel:0 type:2 sonNodes:nil isExpanded:NO headImgPath:nil headImgUrl:nil name:@"One" sonCnt:nil signture:@"First Blood！"];
    //----------------------第一大组第二个----------------------
    ThreeLayersModel *sub2Node1 = [[ThreeLayersModel alloc]init];
    [sub2Node1 createDataWithNodeLevel:0 type:2 sonNodes:nil isExpanded:NO headImgPath:nil headImgUrl:nil name:@"Two" sonCnt:nil signture:@"Double Kill！"];
    //----------------------第一大组第三个----------------------
    ThreeLayersModel *sub3Node1 = [[ThreeLayersModel alloc]init];
    [sub3Node1 createDataWithNodeLevel:0 type:2 sonNodes:nil isExpanded:NO headImgPath:nil headImgUrl:nil name:@"Three" sonCnt:nil signture:@"Treple Kill!"];
    
    //----------------------第一大组第四个----------------------
    ThreeLayersModel *sub4Node1 = [[ThreeLayersModel alloc]init];
    [sub4Node1 createDataWithNodeLevel:0 type:2 sonNodes:nil isExpanded:NO headImgPath:nil headImgUrl:nil name:@"Four" sonCnt:nil signture:@"Quadra Kill！"];
    //----------------------第一大组第五个----------------------
    ThreeLayersModel *sub5Node1 = [[ThreeLayersModel alloc]init];
    [sub5Node1 createDataWithNodeLevel:0 type:2 sonNodes:nil isExpanded:NO headImgPath:nil headImgUrl:nil name:@"Five" sonCnt:nil signture:@"Penta Kill！"];
    node1.sonNodes = [NSMutableArray arrayWithObjects:sub1Node1,sub2Node1,sub3Node1,sub4Node1,sub5Node1, nil];
    
    //-----------------------第二大组----------------------
    ThreeLayersModel *node2 = [[ThreeLayersModel alloc]init];
    [node2 createDataWithNodeLevel:0 type:0 sonNodes:nil isExpanded:NO headImgPath:@"超神" headImgUrl:nil name:@"穿越火线八连杀" sonCnt:nil signture:nil];
    //-------------------第二大组第一个--------------------
    ThreeLayersModel *sub1Node2 = [[ThreeLayersModel alloc]init];
    [sub1Node2 createDataWithNodeLevel:0 type:2 sonNodes:nil isExpanded:NO headImgPath:nil headImgUrl:nil name:@"一杀" sonCnt:nil signture:@"Head shot"];
    
    
    //-------------------第二大组第二个--------------------
    ThreeLayersModel *sub2Node2 = [[ThreeLayersModel alloc]init];
    [sub2Node2 createDataWithNodeLevel:0 type:2 sonNodes:nil isExpanded:NO headImgPath:nil headImgUrl:nil name:@"双杀" sonCnt:nil signture:@"Double kill"];
    
    //-------------------第二大组第三个--------------------
    ThreeLayersModel *sub3Node2 = [[ThreeLayersModel alloc]init];
    [sub3Node2 createDataWithNodeLevel:0 type:2 sonNodes:nil isExpanded:NO headImgPath:nil headImgUrl:nil name:@"多连杀" sonCnt:nil signture:@"Multi Kill"];
    
    
    //-------------------第二大组第四个--------------------
    ThreeLayersModel *sub4Node2 = [[ThreeLayersModel alloc]init];
    [sub4Node2 createDataWithNodeLevel:0 type:2 sonNodes:nil isExpanded:NO headImgPath:nil headImgUrl:nil name:@"突然杀" sonCnt:nil signture:@"Occur Kill"];
    
    //-------------------第二大组第五个--------------------
    ThreeLayersModel *sub5Node2 = [[ThreeLayersModel alloc]init];
    [sub5Node2 createDataWithNodeLevel:0 type:2 sonNodes:nil isExpanded:NO headImgPath:nil headImgUrl:nil name:@"牢不可破的" sonCnt:nil signture:@"Unbreakable"];
    
    //-------------------第二大组第六个--------------------
    ThreeLayersModel *sub6Node2 = [[ThreeLayersModel alloc]init];
    [sub6Node2 createDataWithNodeLevel:0 type:2 sonNodes:nil isExpanded:NO headImgPath:nil headImgUrl:nil name:@"难以至信的" sonCnt:nil signture:@"Unbelievable"];
    
    
    //-------------------第二大组第七个--------------------
    ThreeLayersModel *sub7Node2 = [[ThreeLayersModel alloc]init];
    [sub7Node2 createDataWithNodeLevel:0 type:2 sonNodes:nil isExpanded:NO headImgPath:nil headImgUrl:nil name:@"你想要与我一起吗" sonCnt:nil signture:@"You wanna a piece of me"];
    
    //-------------------第二大组第八个--------------------
    ThreeLayersModel *sub8Node2 = [[ThreeLayersModel alloc]init];
    [sub8Node2 createDataWithNodeLevel:0 type:2 sonNodes:nil isExpanded:NO headImgPath:nil headImgUrl:nil name:@"八连杀" sonCnt:nil signture:@"Come get some"];
    
    node2.sonNodes = [NSMutableArray arrayWithObjects:sub1Node2,sub2Node2,sub3Node2,sub4Node2,sub5Node2,sub6Node2,sub7Node2,sub8Node2, nil];
    
    
    self.dataArray = [NSMutableArray arrayWithObjects:node1,node2, nil];
    
}

//*--------------初始化将要显示的cell的数据-------------
-(void) reloadDataForDisplayArray{
    NSMutableArray *tmp = [[NSMutableArray alloc]init];
    for (ThreeLayersModel *node in self.dataArray) {
        [tmp addObject:node];
        if(node.isExpanded){
            for(ThreeLayersModel *node2 in node.sonNodes){
                [tmp addObject:node2];
                if(node2.isExpanded){
                    for(ThreeLayersModel *node3 in node2.sonNodes){
                        [tmp addObject:node3];
                    }
                }
            }
        }
    }
    _displayArray = [NSArray arrayWithArray:tmp];
    [self.tableView reloadData];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return controllerHeightNew(44);
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _displayArray.count;
}

- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *identifier = @"FirstLayerTableViewCell";
    static NSString *identifier2 = @"ThirdLayerTableViewCell";
    ThreeLayersModel *node = _displayArray[indexPath.row];
    if (node.type == 0) {//类型为0的cell
        FirstLayerTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
        if (cell == nil) {
            cell = [[FirstLayerTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
        }
        cell.backgroundColor = [UIColor clearColor];
        cell.node = node;
        [self loadDataForTreeViewCell:cell with:node];
        [cell setNeedsDisplay];//重装cell
        return cell;
    }
    else {
        ThirdLayerTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier2];
        if (cell == nil) {
            cell = [[ThirdLayerTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier2];
        }
        cell.backgroundColor = [UIColor clearColor];
        cell.node = node;
        [self loadDataForTreeViewCell:cell with:node];
        [cell setNeedsDisplay];
        return cell;
    }
}

//*---------------为不同类型cell填充数据-----------------
- (void)loadDataForTreeViewCell:(UITableViewCell*)cell with:(ThreeLayersModel*)node{
    if(node.type == 0){
        ((FirstLayerTableViewCell *)cell).nameLabel.text = node.name;
        if(node.headImgPath != nil){
            //本地图片
            [((FirstLayerTableViewCell*)cell).iconImage setImage:[UIImage imageNamed:node.headImgPath]];
        }
        else if (node.headImgUrl != nil){
            //加载网络图片
            [((FirstLayerTableViewCell*)cell).imageView setImage:[UIImage imageWithData:[NSData dataWithContentsOfURL:node.headImgUrl]]];
        }
    }
    
    else{
        
        ((ThirdLayerTableViewCell*)cell).nameLabel.text = node.name;
        ((ThirdLayerTableViewCell*)cell).signture.text = node.signture;
        if(node.headImgPath != nil){
            //本地图片
            [((ThirdLayerTableViewCell*)cell).headImage setImage:[UIImage imageNamed:node.headImgPath]];
        }
        else if (node.headImgUrl != nil){
            //加载网络图片
            [((ThirdLayerTableViewCell*)cell).headImage setImage:[UIImage imageWithData:[NSData dataWithContentsOfURL:node.headImgUrl]]];
        }
    }
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    ThreeLayersModel *node = [_displayArray objectAtIndex:indexPath.row];
    [self reloadDataForDisplayArrayChangeAt:indexPath.row];//修改cell的状态(关闭或打开)
    if(node.type == 2){
        //处理叶子节点选中，此处可自定义
        DetailViewController * dvc = [[DetailViewController alloc]init];
        dvc.node = node;
        [self.navigationController pushViewController:dvc animated:YES];
    }
    else{//节点为0或者1的，旋转箭头
        FirstLayerTableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
        if(cell.node.isExpanded ){
            [self rotateArrow:cell with:M_PI_2];
        }
        else{
            [self rotateArrow:cell with:0];
        }
    }
}

//*------------------旋转箭头图标--------------------
-(void) rotateArrow:(FirstLayerTableViewCell*) cell with:(double)degree{
    [UIView animateWithDuration:0.35 delay:0 options:UIViewAnimationOptionAllowUserInteraction animations:^{
        cell.arrowView.layer.transform = CATransform3DMakeRotation(degree, 0, 0, 1);
    } completion:nil];
}

//*---------------修改cell的状态(关闭或打开)---------------
- (void) reloadDataForDisplayArrayChangeAt:(NSInteger)row{
    NSMutableArray *tmp = [[NSMutableArray alloc]init];
    NSInteger nbNumber = 0;
    for (ThreeLayersModel *node in self.dataArray) {
        [tmp addObject:node];
        if(nbNumber == row){
            node.isExpanded = !node.isExpanded;
        }
        nbNumber++;
        if(node.isExpanded){
            for(ThreeLayersModel *node2 in node.sonNodes){
                [tmp addObject:node2];
                if(nbNumber == row){
                    node2.isExpanded = !node2.isExpanded;
                }
                nbNumber++;
                if(node2.isExpanded){
                    for(ThreeLayersModel *node3 in node2.sonNodes){
                        [tmp addObject:node3];
                        nbNumber++;
                    }
                }
            }
        }
    }
    _displayArray = [NSArray arrayWithArray:tmp];
    [self.tableView reloadData];
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
