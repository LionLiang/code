//
//  QYViewController.m
//  UITabelViewDemo
//
//  Created by qingyun on 15-2-10.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import "QYViewController.h"

@interface QYViewController ()

@end

@implementation QYViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    UITableView *table = [[UITableView alloc] initWithFrame:[UIScreen mainScreen].applicationFrame style:UITableViewStyleGrouped];
    
    table.separatorColor = [UIColor redColor];
    //table.separatorStyle = UITableViewCellSeparatorStyleNone;
    
    //table.rowHeight = 80; // 设置表格的行高，统一指定所有行的高度，一般使用代理来直接直接相应行的高度
    table.sectionHeaderHeight = 60; // 设置每组的头部高度
    table.sectionFooterHeight = 60; // 设置每组的尾部高度
    
    table.backgroundColor = [UIColor greenColor]; // 设置表格的背景颜色
    //table.backgroundView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"login_introduce_bg4-586h.jpg"]]; // 设置表格的背景视图
    
    _dataArray = @[@"kaiguo",@"laoxu",@"junjie",@"liqi",@"chengzhi",@"xiaogang",@"wangduo",@"haipeng"];
    
    table.delegate = self; // 设置表视图的代理，遵循UITableViewDelegate
    table.dataSource = self; // 设置数据源，即当前的视图控制器，必须遵循UITableViewDatasource
    
    //table.allowsSelection = NO; // 禁用表格的选中操作
    table.allowsMultipleSelection = YES; // 开启表格的多选操作
    
    [self.view addSubview:table];
    
    UIView *headerView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 0, 50)];
    headerView.backgroundColor = [UIColor cyanColor];
    UILabel *headerLabel = [[UILabel alloc] initWithFrame:CGRectMake(60, 10, 200, 30)];
    headerLabel.text = @"花名册";
    headerLabel.textAlignment = NSTextAlignmentCenter;
    headerLabel.backgroundColor = [UIColor greenColor];
    [headerView addSubview:headerLabel];
    table.tableHeaderView = headerView; // 设置头部视图
    NSLog(@"tableview.header >>>> %@", table.tableHeaderView);
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Datasource required
// 表示图数据源代理必须实现的两个方法
// 1.每组中绘制多少行单元格
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
//    if (section == 0) {
//        return [_dataArray count]-5;
//    }
    return [_dataArray count];
}

// 2.每个单元格如何配置内容
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *identifier = @"MyCell";
    //检测、查询是否有闲置的单元格
    //系统如何来重用单元格
    //1.先从系统队列中寻找是否可以重用的格子（完全滑出屏幕的那些单元格）
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    //2.判断取出来的闲置格子是否为空，如果为空的话就需要重新分配内存，初始化一个全新的格子，而且需要用一样的标示符identifier
    if (cell == nil){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
        if (indexPath.section == 0 && indexPath.row == 0) {
            cell.backgroundColor = [UIColor redColor];
        }
        if (indexPath.section == 0 && indexPath.row == 1) {
            cell.backgroundColor = [UIColor magentaColor];
        }
    }
    NSLog(@"indexPath.section, indexPath.row >>>>>>> %lu,%lu", indexPath.section, indexPath.row);
    
    
    if (indexPath.row == 0) {
        cell.textLabel.text = @"xxx";
    } else {
        cell.textLabel.text = _dataArray[indexPath.row];
    }

    return cell;
}

#pragma mark - Datasource optional
// 数据源代理中选择实现的方法
// 表示图中需要绘制多少行，默认是1
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 2;
}
// 设置每组头部高度
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    if (section == 0) {
        return @"第一组";
    } else {
        return @"第二组";
    }
}
// 设置每组尾部高度
- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section
{
    if (section == 0) {
        return @"第一组end";
    } else {
        return @"第二组end";
    }
}

#pragma mark - UITableView Delegate

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
//    if (indexPath.row == 0 && indexPath.section == 0) {
//        return 80;
//    }
    return 44;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    if (section == 0) {
        return 30;
    }
    return 60;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    if (section == 0) {
        UIView *headerView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 0, 30)];
        headerView.clipsToBounds = YES;
        headerView.backgroundColor = [UIColor brownColor];
        UILabel *headerLabel = [[UILabel alloc] initWithFrame:CGRectMake(60, 0, 200, 30)];
        headerLabel.text = @"第一组";
        headerLabel.textAlignment = NSTextAlignmentCenter;
        headerLabel.backgroundColor = [UIColor greenColor];
        [headerView addSubview:headerLabel];
        return headerView;
    }
    return nil;
}

- (NSIndexPath *)tableView:(UITableView *)tableView willDeselectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@">>>>>> %s <<<<<<<< selected section,row====%ld,%ld", __func__,(long)indexPath.section,(long)indexPath.row);
    return indexPath;
}

- (NSIndexPath *)tableView:(UITableView *)tableView willSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@">>>>>> %s <<<<<<<< selected section,row====%ld,%ld", __func__,(long)indexPath.section,(long)indexPath.row);
    return indexPath;
}

@end
