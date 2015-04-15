//
//  QYTableViewController.m
//  TableVIewEditDemo
//
//  Created by qingyun on 15-2-12.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import "QYTableViewController.h"

static NSString *identfier = @"myCell";

@interface QYTableViewController ()

@end

@implementation QYTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
        self.title = @"Table";
    }
    return self;
}



- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    
    // 开启编辑模式
    //self.navigationItem.rightBarButtonItem = self.editButtonItem;
    //self.editButtonItem的点击事件实现的原理如下
    //[self.tableView setEditing:YES animated:YES];
    
    _selectedArray = [[NSMutableArray alloc] init];
    UISegmentedControl *editSeg = [[UISegmentedControl alloc] initWithItems:@[@"+",@"-"]];
    
    [editSeg addTarget:self action:@selector(clickEdit:) forControlEvents:UIControlEventValueChanged];
    
    UIBarButtonItem *editItem = [[UIBarButtonItem alloc] initWithCustomView:editSeg];
    self.navigationItem.rightBarButtonItem = editItem;
    _dataArray = [NSMutableArray arrayWithArray:[UIFont familyNames]];
    [self setEditing:YES animated:YES];
    self.tableView.allowsMultipleSelectionDuringEditing = YES;
    
    
    //[self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:identfier];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [_dataArray count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identfier forIndexPath:indexPath];
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identfier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:identfier];
        
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 100, 44)];
        label.backgroundColor = [UIColor yellowColor];
        label.tag = 1001;
        [cell.contentView addSubview:label];
        //cell.accessoryType = UITableViewCellAccessory;
        
    }
    UILabel *titleLabel = (UILabel *)[cell.contentView viewWithTag:1001];
    titleLabel.text = _dataArray[indexPath.row];
    return cell;
}

// 系统风格的添加和删除
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"%s", __func__);
   
    if (editingStyle == UITableViewCellEditingStyleDelete) {  // 点击了删除操作
        // Delete the row from the data source
        [_dataArray removeObjectAtIndex:indexPath.row]; // 从数据记录中删除数据先
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade]; //从界面上把该单元格移除掉
    } else if (editingStyle == UITableViewCellEditingStyleInsert) { // 点击了添加操作
        NSString *fontName = @"customFontName";
        [_dataArray insertObject:fontName atIndex:indexPath.row+1];
        NSIndexPath *newIndexpath = [NSIndexPath indexPathForRow:indexPath.row+1 inSection:indexPath.section];
        [tableView insertRowsAtIndexPaths:@[newIndexpath] withRowAnimation:UITableViewRowAnimationLeft];
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}

// 多选删除或添加
- (void)clickEdit:(UISegmentedControl *)sender
{
    NSLog(@"click >>>> %ld", (long)sender.selectedSegmentIndex);
    if (sender.selectedSegmentIndex == 1) {
        // 先从数据记录中把所有的选中行从数据中删除
        for(NSIndexPath *delIndexPath in _selectedArray){
            [_dataArray removeObjectAtIndex:delIndexPath.row];
        }
        // 从界面上把该单元格移除掉
        [self.tableView deleteRowsAtIndexPaths:_selectedArray withRowAnimation:UITableViewRowAnimationRight];
        // 所有删除的工作做完之后把中间数组也清空
        [_selectedArray removeAllObjects];
    } else {
        NSString *fontName = @"customFontName";
        [_dataArray insertObject:fontName atIndex:1];
        NSIndexPath *newIndexpath = [NSIndexPath indexPathForRow:1 inSection:0];
        [self.tableView insertRowsAtIndexPaths:@[newIndexpath] withRowAnimation:UITableViewRowAnimationLeft];

    }
    sender.selectedSegmentIndex = -1;
}

//- (void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [_selectedArray addObject:indexPath];
}

- (void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [_selectedArray removeObject:indexPath];
}
@end
