//
//  QYViewController.m
//  ChessDemo
//
//  Created by qingyun on 15-2-5.
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
    
    // 棕色的边框
    UIView *rootView = [[UIView alloc] initWithFrame:CGRectMake(20, 100, 280, 280)];
    rootView.backgroundColor = [UIColor brownColor];
    
    // 灰色的底
    UIView *backView = [[UIView alloc] initWithFrame:CGRectMake(10, 10, 260, 260)];
    backView.backgroundColor = [UIColor grayColor];
    [rootView addSubview:backView];
    
    // 黄色格子整体处理成底色
    UIView *whiteView = [[UIView alloc] initWithFrame:CGRectMake(10, 10, 240, 240)];
    whiteView.backgroundColor = [UIColor yellowColor];
    [backView addSubview:whiteView];

    // 间隔添加棕色的格子
    for (int i=0; i<8; i++) {
        for (int j=0; j<8; j++) {
            if ((i+j)%2){
                UIView *blackView = [[UIView alloc] initWithFrame:CGRectMake(240/8*j, 240/8*i, 240/8, 240/8)];
                blackView.backgroundColor = [UIColor brownColor];
                [whiteView addSubview:blackView];
            }
        }
    }
    
    [self.view addSubview:rootView];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
