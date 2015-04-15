//
//  QYViewController.m
//  HelloDemo
//
//  Created by qingyun on 15-1-31.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import "QYViewController.h"

@interface QYViewController ()

@end

@implementation QYViewController

- (void)viewDidLoad
{
    [super viewDidLoad]; //  不要删掉这个，必须先调父类的viewDidLoad做一些必须的事情
    
    // 打印沙盒目录，里头存放着项目的一些资源文件（非代码的）
    NSString *home = NSHomeDirectory();
    NSLog(@"sandbox >>>>> %@", home);
    
    // 实例化一个UILable，用画它的矩形区域来初始化
    UILabel *myLabel = [[UILabel alloc] initWithFrame:CGRectMake(100, 100, 180, 40)];
    // text是UILabel类的一个属性，用来放置显示的文本内容
    myLabel.text = @"Hello, Everyone!";
    // 设置背景属性
    myLabel.backgroundColor = [UIColor greenColor];
    // 设置文本对齐属性
    myLabel.textAlignment = NSTextAlignmentCenter;
    // 空件要想显示，必须添加到试图控制器（ViewController）的view上
    [self.view addSubview:myLabel];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
