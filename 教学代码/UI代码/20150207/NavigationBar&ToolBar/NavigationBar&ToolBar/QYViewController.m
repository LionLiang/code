//
//  QYViewController.m
//  NavigationBar&ToolBar
//
//  Created by qingyun on 15-2-7.
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
    
    // UINavigationBar 单独使用
    UINavigationBar *navigationBar = [[UINavigationBar alloc] initWithFrame:CGRectMake(0, 150, 320, 44)];
    
    navigationBar.tintColor = [UIColor greenColor];
    
    // UINavigationBar 中入栈的元素是UINavigationItem，UINavigationItem放置的元素是UIBarButtonItem
    UINavigationItem *item1 = [[UINavigationItem alloc] initWithTitle:@"1"];
    item1.leftBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemEdit target:nil action:nil];
    
    // 入栈
    UINavigationItem *item2 = [[UINavigationItem alloc] init];
    UIView *rightView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 80, 44)];
    rightView.backgroundColor = [UIColor purpleColor];
    UIBarButtonItem *rightItem = [[UIBarButtonItem alloc] initWithCustomView:rightView];
    item2.rightBarButtonItem = rightItem;
    item2.title = @"2";
    [navigationBar pushNavigationItem:item1 animated:YES];
    [navigationBar pushNavigationItem:item2 animated:YES];// 入栈
    
    //[navigationBar setItems:[NSArray arrayWithObjects:item1,item2, nil] animated:YES];
    
    
    // UIToolBar 单独使用
    
    UIToolbar *toolBar = [[UIToolbar alloc] initWithFrame:CGRectMake(0, 250, 320, 32)];
    
    UIBarButtonItem *toolItems = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFastForward target:nil action:nil];
    UIBarButtonItem *toolItems1 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFastForward target:nil action:nil];
    UIBarButtonItem *toolItems2 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFastForward target:nil action:nil];
    UIBarButtonItem *toolItems3 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFastForward target:nil action:nil];
    [toolBar setItems:@[toolItems,toolItems1,toolItems2,toolItems3] animated:YES];
    
    [self.view addSubview:navigationBar];
    [self.view addSubview:toolBar];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
