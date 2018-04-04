//
//  ThreeViewController.m
//  TreeView
//
//  Created by wenHao Qiu on 2018/4/4.
//  Copyright © 2018年 文豪. All rights reserved.
//  github下载地址 https://github.com/QiuWenHao/TreeView
//  QQ：664952091 有问题欢迎探讨
//

#import "ThreeViewController.h"
#import "FirstLayerTableViewCell.h"
#import "SecondLayerTableViewCell.h"
#import "ThirdLayerTableViewCell.h"
#import "DetailViewController.h"

#define controllerHeightNew(h) (h) * self.view.frame.size.height/667.0f

@interface ThreeViewController ()<UIGestureRecognizerDelegate>

@property(strong, nonatomic) NSArray *displayArray;   //保存要显示在界面

@end

@implementation ThreeViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    UIImageView *backImage = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 375, 667)];
    [backImage setImage:[UIImage imageNamed:@"beijing.jpg"]];
    self.tableView.backgroundColor = [UIColor clearColor];
    backImage.alpha = 0.3;
    [self.view addSubview:backImage];
    [self.view addSubview:self.tableView];
    [self addTestData];//添加演示数据
    [self reloadDataForDisplayArray];//初始化将要显示的数据
    
}

- (void)addTestData{

    //-----------------------第一大组----------------------
    ThreeLayersModel *node1 = [[ThreeLayersModel alloc]init];
    [node1 createDataWithNodeLevel:0 type:0 sonNodes:nil isExpanded:NO headImgPath:@"lol" headImgUrl:nil name:@"最爱英雄" sonCnt:nil signture:nil];
    //----------------------第一大组第一个----------------------
    ThreeLayersModel *sub1Node1 = [[ThreeLayersModel alloc]init];
    [sub1Node1 createDataWithNodeLevel:1 type:2 sonNodes:nil isExpanded:NO headImgPath:@"jianhao" headImgUrl:nil name:@"亚索" sonCnt:nil signture:@"死亡如风，常伴吾身！"];
    //----------------------第一大组第二个----------------------
    ThreeLayersModel *sub2Node1 = [[ThreeLayersModel alloc]init];
    [sub2Node1 createDataWithNodeLevel:1 type:2 sonNodes:nil isExpanded:NO headImgPath:@"zed" headImgUrl:nil name:@"劫" sonCnt:nil signture:@"无形之刃，最为致命！"];
    //----------------------第一大组第三个----------------------
    ThreeLayersModel *sub3Node1 = [[ThreeLayersModel alloc]init];
    [sub3Node1 createDataWithNodeLevel:1 type:2 sonNodes:nil isExpanded:NO headImgPath:@"feizi" headImgUrl:nil name:@"小鱼" sonCnt:nil signture:@"要我吃掉他们！"];
    
    //----------------------第一大组第四个----------------------
    ThreeLayersModel *sub4Node1 = [[ThreeLayersModel alloc]init];
    [sub4Node1 createDataWithNodeLevel:1 type:2 sonNodes:nil isExpanded:NO headImgPath:@"anyinglieshou" headImgUrl:nil name:@"薇恩" sonCnt:nil signture:@"让我们来猎杀那些陷入黑暗中的人吧！"];
    //----------------------第一大组第五个----------------------
    ThreeLayersModel *sub5Node1 = [[ThreeLayersModel alloc]init];
    [sub5Node1 createDataWithNodeLevel:1 type:2 sonNodes:nil isExpanded:NO headImgPath:@"picheng" headImgUrl:nil name:@"女警" sonCnt:nil signture:@"好戏开场了！"];
    node1.sonNodes = [NSMutableArray arrayWithObjects:sub1Node1,sub2Node1,sub3Node1,sub4Node1,sub5Node1, nil];
    
    //-----------------------第二大组----------------------
    ThreeLayersModel *node2 = [[ThreeLayersModel alloc]init];
    [node2 createDataWithNodeLevel:0 type:0 sonNodes:nil isExpanded:NO headImgPath:@"friend" headImgUrl:nil name:@"朋友" sonCnt:nil signture:nil];
    //-------------------第二大组第一小组--------------------
    ThreeLayersModel *sub1Node2 = [[ThreeLayersModel alloc]init];
    [sub1Node2 createDataWithNodeLevel:1 type:1 sonNodes:nil isExpanded:NO headImgPath:nil headImgUrl:nil name:@"好兄弟" sonCnt:@"3" signture:nil];
    //-------------------第二大组第一小组第一个--------------------
    ThreeLayersModel *sub1Node2Sub1 = [[ThreeLayersModel alloc]init];
    [sub1Node2Sub1 createDataWithNodeLevel:2 type:2 sonNodes:nil isExpanded:NO headImgPath:@"qing" headImgUrl:nil name:@"常青" sonCnt:nil signture:@"是谁来自山川和海，却囿于昼夜"];
    
    //-------------------第二大组第一小组第二个--------------------
    ThreeLayersModel *sub1Node2Sub2 = [[ThreeLayersModel alloc]init];
    [sub1Node2Sub2 createDataWithNodeLevel:2 type:2 sonNodes:nil isExpanded:NO headImgPath:@"tengfei" headImgUrl:nil name:@"腾飞" sonCnt:nil signture:@"闲谈莫论人非，静坐常思己过"];
    //-------------------第二大组第一小组第三个--------------------
    ThreeLayersModel *sub1Node2Sub3 = [[ThreeLayersModel alloc]init];
    [sub1Node2Sub3 createDataWithNodeLevel:2 type:2 sonNodes:nil isExpanded:NO headImgPath:@"ruidong" headImgUrl:nil name:@"瑞东" sonCnt:nil signture:@"c-e-f-c-e-f-ce-ce-cef！"];
    
    sub1Node2.sonNodes = [NSMutableArray arrayWithObjects:sub1Node2Sub1,sub1Node2Sub2,sub1Node2Sub3, nil];
    
    //-------------------第二大组第二小组--------------------
    ThreeLayersModel *sub2Node2 = [[ThreeLayersModel alloc]init];
    [sub2Node2 createDataWithNodeLevel:1 type:1 sonNodes:nil isExpanded:NO headImgPath:nil headImgUrl:nil name:@"最爱" sonCnt:@"1" signture:nil];
    
    //-------------------第二大组第二小组第一个--------------------
    ThreeLayersModel *sub2Node2Sub1 = [[ThreeLayersModel alloc]init];
    [sub2Node2Sub1 createDataWithNodeLevel:2 type:2 sonNodes:nil isExpanded:NO headImgPath:@"guai" headImgUrl:nil name:@"丹丹" sonCnt:@"1" signture:@"做好他的她"];
    sub2Node2.sonNodes = [NSMutableArray arrayWithObjects:sub2Node2Sub1, nil];
    
    
    node2.sonNodes = [NSMutableArray arrayWithObjects:sub1Node2,sub2Node2, nil];
    
    //-----------------------第三大组----------------------
    ThreeLayersModel *node3 = [[ThreeLayersModel alloc]init];
    [node3 createDataWithNodeLevel:0 type:0 sonNodes:nil isExpanded:NO headImgPath:@"team.jpg" headImgUrl:nil name:@"公司部门" sonCnt:nil signture:nil];
    //-------------------第三大组第一小组--------------------
    ThreeLayersModel *sub1Node3 = [[ThreeLayersModel alloc]init];
    [sub1Node3 createDataWithNodeLevel:1 type:1 sonNodes:nil isExpanded:NO headImgPath:nil headImgUrl:nil name:@"技术部" sonCnt:@"3" signture:nil];
    //-------------------第三大组第一小组第一个--------------------
    ThreeLayersModel *sub1Node3sub1 = [[ThreeLayersModel alloc]init];
    [sub1Node3sub1 createDataWithNodeLevel:2 type:2 sonNodes:nil isExpanded:NO headImgPath:@"junjie" headImgUrl:nil name:@"田俊杰" sonCnt:nil signture:@"加油、努力！"];
    //-------------------第三大组第一小组第二个--------------------
    ThreeLayersModel *sub1Node3sub2 = [[ThreeLayersModel alloc]init];
    [sub1Node3sub2 createDataWithNodeLevel:2 type:2 sonNodes:nil isExpanded:NO headImgPath:@"jiale" headImgUrl:nil name:@"佳乐" sonCnt:nil signture:@"相爱了，就一起走下去"];
    
    //-------------------第三大组第一小组第三个--------------------
    ThreeLayersModel *sub1Node3sub3 = [[ThreeLayersModel alloc]init];
    [sub1Node3sub3 createDataWithNodeLevel:2 type:2 sonNodes:nil isExpanded:NO headImgPath:@"laolv" headImgUrl:nil name:@"老吕" sonCnt:nil signture:@"我日！我又忘带了"];
    
    sub1Node3.sonNodes = [NSMutableArray arrayWithObjects:sub1Node3sub1,sub1Node3sub2,sub1Node3sub3, nil];
    
    
    //-------------------第三大组第二小组--------------------
    ThreeLayersModel *sub2Node3 = [[ThreeLayersModel alloc]init];
    [sub2Node3 createDataWithNodeLevel:1 type:1 sonNodes:nil isExpanded:NO headImgPath:nil headImgUrl:nil name:@"运营部" sonCnt:@"3" signture:nil];
    //-------------------第三大组第二小组第一个--------------------
    ThreeLayersModel *sub2Node3sub1 = [[ThreeLayersModel alloc]init];
    [sub2Node3sub1 createDataWithNodeLevel:2 type:2 sonNodes:nil isExpanded:NO headImgPath:@"laozhou" headImgUrl:nil name:@"老周" sonCnt:nil signture:@"流程怎么走，咱弄清楚"];
    //-------------------第三大组第二小组第二个--------------------
    ThreeLayersModel *sub2Node3sub2 = [[ThreeLayersModel alloc]init];
    [sub2Node3sub2 createDataWithNodeLevel:2 type:2 sonNodes:nil isExpanded:NO headImgPath:@"laoyuan" headImgUrl:nil name:@"老袁" sonCnt:nil signture:@"接下来我们就不能像以前那样了！"];
    //-------------------第三大组第二小组第三个--------------------
    ThreeLayersModel *sub2Node3sub3 = [[ThreeLayersModel alloc]init];
    [sub2Node3sub3 createDataWithNodeLevel:2 type:2 sonNodes:nil isExpanded:NO headImgPath:@"guanjing" headImgUrl:nil name:@"关景" sonCnt:nil signture:@"同志们给点面子，喝吧！"];
    
    sub2Node3.sonNodes = [NSMutableArray arrayWithObjects:sub2Node3sub1,sub2Node3sub2,sub2Node3sub3, nil];
    //-------------------第三大组第三小组--------------------
    ThreeLayersModel *sub3Node3 = [[ThreeLayersModel alloc]init];
    [sub3Node3 createDataWithNodeLevel:1 type:1 sonNodes:nil isExpanded:NO headImgPath:nil headImgUrl:nil name:@"财务部" sonCnt:@"2" signture:nil];
    //-------------------第三大组第三小组第一个--------------------
    ThreeLayersModel *sub3Node3sub1 = [[ThreeLayersModel alloc]init];
    [sub3Node3sub1 createDataWithNodeLevel:2 type:2 sonNodes:nil isExpanded:NO headImgPath:@"lianglicai" headImgUrl:nil name:@"梁丽彩" sonCnt:nil signture:@"你不要这样！我给你讲"];
    //-------------------第三大组第三小组第二个--------------------
    ThreeLayersModel *sub3Node3sub2 = [[ThreeLayersModel alloc]init];
    [sub3Node3sub2 createDataWithNodeLevel:2 type:2 sonNodes:nil isExpanded:NO headImgPath:@"chunyi" headImgUrl:nil name:@"春意" sonCnt:nil signture:@"你干啥类"];
    sub3Node3.sonNodes = [NSMutableArray arrayWithObjects:sub3Node3sub1,sub3Node3sub2, nil];
    node3.sonNodes = [NSMutableArray arrayWithObjects:sub1Node3,sub2Node3,sub3Node3, nil];
    
    self.dataArray = [NSMutableArray arrayWithObjects:node1,node2,node3, nil];
    
}
//*--------------初始化将要显示的cell的数据-------------

- (void)reloadDataForDisplayArray{
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
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *identifier = @"FirstLayerTableViewCell";
    static NSString *identifier1 = @"SecondLayerTableViewCell";
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
        [cell setNeedsDisplay];//重装cell，不写的话先点开其它两组，再打开第一组，第一组的nodeLevel会受到影响；
        return cell;
    }
    else if (node.type == 1){
        SecondLayerTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier1];
        if (cell == nil) {
            cell = [[SecondLayerTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier1];
        }
        cell.backgroundColor = [UIColor clearColor];
        cell.node = node;
        [self loadDataForTreeViewCell:cell with:node];
        [cell setNeedsDisplay];
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
    
    else if(node.type == 1) {
        
        ((SecondLayerTableViewCell*)cell).nameLabel.text = node.name;
        ((SecondLayerTableViewCell*)cell).sonCount.text = node.sonCnt;
    }
    
    else {
        
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

//- (void)handleSingleTap:(UITapGestureRecognizer *)sender{
//    CGPoint point = [sender locationInView:self.tableView];
//    NSLog(@"===handleSingleTap!pointx:%f,y:%f",point.x,point.y);
//}

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
- (void)rotateArrow:(FirstLayerTableViewCell*) cell with:(double)degree{
    [UIView animateWithDuration:0.35 delay:0 options:UIViewAnimationOptionAllowUserInteraction animations:^{
        cell.arrowView.layer.transform = CATransform3DMakeRotation(degree, 0, 0, 1);
    } completion:nil];
}

//*---------------修改cell的状态(关闭或打开)---------------

- (void)reloadDataForDisplayArrayChangeAt:(NSInteger)row{
    NSMutableArray *tmp = [[NSMutableArray alloc]init];
    NSInteger nbNumber = 0;//这个数很牛逼！
    for (ThreeLayersModel *node in self.dataArray) {
        [tmp addObject:node];
        if(nbNumber == row){//精华所在~~
            node.isExpanded = !node.isExpanded;
        }
        nbNumber++;//一定不能少，精华中的精华~~~
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
