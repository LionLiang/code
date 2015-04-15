//
//  QYTableViewController.m
//  WorldCupTable
//
//  Created by qingyun on 15-2-12.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import "QYTableViewController.h"

static NSString *identfier = @"wcCell";

/*--------------------自定义新的UItableViewCell---------------------- */
// 为了配合registerClass方法注册单元格，所以先实现MyTableViewCell，并且重写initWithStyle方法，来完成单元格的自定义
@interface MyTableViewCell : UITableViewCell

@end

@implementation MyTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if (self = [super initWithStyle:UITableViewCellStyleValue2 reuseIdentifier:identfier]) {
        UILabel *myTitleLable = [[UILabel alloc] initWithFrame:CGRectMake(170, 0, 150, 44)];
        
        myTitleLable.tag = 1001;
        myTitleLable.backgroundColor = [UIColor yellowColor];
        myTitleLable.textAlignment = NSTextAlignmentCenter;
        [self.contentView addSubview:myTitleLable];
    }
    return self;
}
@end
/*--------------------自定义新的UItableViewCell---------------------- */

@interface QYTableViewController ()

@end

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
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"ListData" ofType:@"plist"];
    _dictData = [NSDictionary dictionaryWithContentsOfFile:filePath];
    
    _keysData = [_dictData allKeys];
    _keysData = [_keysData sortedArrayUsingSelector:@selector(compare:)]; // acsii码升序
    
    // 在重用之前需要先按固定的名字标识注册单元格
    /*--------------------自定义新的UItableViewCell---------------------- */
    // 因为在使用registerClass这个方法去注册单元格的时候，根本不知道单元格是如何被初始化和自定义的，这个如果想使用自定义的单元格，就需要写一个UITableViewCell的子类，重写初始化方法，完成对单元格的自定义
    [self.tableView registerClass:[MyTableViewCell class] forCellReuseIdentifier:identfier];
    /*--------------------自定义新的UItableViewCell---------------------- */
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return [_keysData count];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [[_dictData objectForKey:_keysData[section]] count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    // 1.重用单元格的方式一
//    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identfier];
//    
//    if (cell == nil) {
//        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:identfier];
//    }
    
    // 2.重用单元格方法二
    // 首先要要在viewDidLoad中先注册单元格
    // [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:identfier];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identfier forIndexPath:indexPath];
    
    NSString *countyName = [_dictData objectForKey:_keysData[indexPath.section]][indexPath.row];
    
    UILabel *titleLable = (UILabel *)[cell.contentView viewWithTag:1001];
    titleLable.text = countyName;
    //cell.textLabel.text = countyName;
    
    return cell;
}


-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return _keysData[section];
}


- (NSArray *)sectionIndexTitlesForTableView:(UITableView *)tableView
{
    return _keysData;
}


@end
