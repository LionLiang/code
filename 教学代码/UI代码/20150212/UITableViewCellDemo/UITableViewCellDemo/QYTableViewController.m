//
//  QYTableViewController.m
//  UITableViewCellDemo
//
//  Created by qingyun on 15-2-12.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import "QYTableViewController.h"
#import "MyTableViewCell.h"

@interface QYTableViewController ()

@end

static NSString *identfier = @"myCell";
static NSString *customIdentfier = @"customCell";
static NSString *layoutSubviewsIndentfier = @"layoutCell";

@implementation QYTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //UITableViewCell
    
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
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
    return 6;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = nil;
    if (indexPath.row == 4) {
        cell = [tableView dequeueReusableCellWithIdentifier:customIdentfier];
    } else if (indexPath.row == 5) {
        cell = [tableView dequeueReusableCellWithIdentifier:layoutSubviewsIndentfier];
    } else {
        cell = [tableView dequeueReusableCellWithIdentifier:identfier];
    }
    

    if (cell == nil) {
        // 定制单元格实际是还是对单元格框架的订制，所以在初始化单元格的时候要把自定义的框架部分（意味着要重用）写好，把内容的配置写到初始化单元格的逻辑之外
        
        if (indexPath.row == 4) { //第5行是自定义的，其余的用系统风格
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:customIdentfier];
            UILabel *myTitleLable = [[UILabel alloc] initWithFrame:CGRectMake(170, 20, 150, 40)];
            
            myTitleLable.tag = 1001;
            myTitleLable.backgroundColor = [UIColor yellowColor];
            myTitleLable.textAlignment = NSTextAlignmentCenter;
            [cell.contentView addSubview:myTitleLable];
            //[cell addSubview:myTitleLable];// 错误的做法
            
            UIImageView *imageView = [[UIImageView alloc]  initWithImage:[UIImage imageNamed:@"adward_box_1"]];
            imageView.frame = CGRectMake(20, 20, 40, 40);
            [cell.contentView addSubview:imageView];
            
        } else if (indexPath.row == 5) {
            cell = [[MyTableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:layoutSubviewsIndentfier];
        } else {
            // 前4行生成4种类型的单元格，比较差异
            cell = [[UITableViewCell alloc] initWithStyle:indexPath.row reuseIdentifier:identfier];
            cell.selectionStyle = indexPath.row;
        }
        
    }
    if (indexPath.row == 4) {
        UILabel *titleLabel = (UILabel *)[cell.contentView viewWithTag:1001];
        //UILabel *titleLabel = (UILabel *)[cell viewWithTag:1001];// 错误的做法
        titleLabel.text = [NSString stringWithFormat:@"我是第%ld行！",(long)indexPath.row];
        //cell.textLabel.text = @"我也能用";
    } else if (indexPath.row == 5) {
        cell.textLabel.text = @"重写layoutSubviews";
        cell.imageView.image = [UIImage imageNamed:@"2"];
    } else {
        cell.textLabel.text = [NSString stringWithFormat:@"Style %ld ", (long)indexPath.row];
        cell.imageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"%ld", (long)indexPath.row]];
        cell.detailTextLabel.text = @"detaile title";
        
        cell.accessoryType = UITableViewCellAccessoryCheckmark; //辅助按钮
        UIImageView *imageV = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"2"]];
        cell.accessoryView = imageV; // 会覆盖原来的accessoryType
        
        if (indexPath.row == 2) {
            UIView *backView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 80)];
            backView.backgroundColor = [UIColor greenColor];
            cell.selectedBackgroundView = backView;
            cell.selected = YES;
        }
    }
    
    return cell;
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 80;
}
/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

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
