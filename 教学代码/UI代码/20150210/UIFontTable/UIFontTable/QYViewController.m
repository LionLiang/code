//
//  QYViewController.m
//  UIFontTable
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
    
    UITableView *table = [[UITableView alloc] initWithFrame:[UIScreen mainScreen].applicationFrame style:UITableViewStylePlain];
    
    _dataArray = [UIFont familyNames]; // 取出字体库数组
    
    table.dataSource = self;
    table.rowHeight = 60;
    
    [self.view addSubview:table];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

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
    static NSString *indentfier = @"suiyi";
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:indentfier];
    NSString *fontName = _dataArray[indexPath.row];
    
    cell.textLabel.text = fontName; // 把该单元格的显示内容设为字体名字
    cell.textLabel.font = [UIFont fontWithName:fontName size:20]; // 同时把该格子的字体也设置为该名字的字体
    
    return cell;
}


@end
