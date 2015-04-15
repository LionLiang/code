//
//  QYViewController.m
//  TranformDemo
//
//  Created by qingyun on 15-2-2.
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
    
    UIView *myView = [[UIView alloc] initWithFrame:CGRectMake(50, 50, 220, 220)];
    myView.backgroundColor = [UIColor brownColor];
    
    [self.view addSubview: myView];
    
    // 动画功能块开始
    [UIView beginAnimations:@"viewTransform" context:nil];
    // 实现放大和缩小
    myView.transform = CGAffineTransformScale(myView.transform, 0.3, 0.3);
    // 实现旋转
    myView.transform = CGAffineTransformRotate(myView.transform, 100);
//    // 实现平移
    myView.transform = CGAffineTransformTranslate(myView.transform, -120, -120);
    // 动画功能块结束
    [UIView commitAnimations];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
