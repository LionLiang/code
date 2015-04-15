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
    self.navigationItem.rightBarButtonItem = self.editButtonItem;
    //self.editButtonItem的点击事件实现的原理如下
    //[self.tableView setEditing:YES animated:YES];
    
    _dataArray = [NSMutableArray arrayWithArray:[UIFont familyNames]];
    
    
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

// 用来返回每一行是否可以用于编辑
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == 0) {
        return NO;
    }
    return YES;
}

// 返回每一行的编辑状态
- (UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == 1) {
        return UITableViewCellEditingStyleInsert; // +
    }
    return UITableViewCellEditingStyleDelete; // -
}

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


/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

// 用来返回每一行是否可以移动
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
