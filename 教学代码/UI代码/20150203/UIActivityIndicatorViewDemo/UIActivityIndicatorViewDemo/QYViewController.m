//
//  QYViewController.m
//  UIActivityIndicatorViewDemo
//
//  Created by qingyun on 15-2-3.
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
    
    UIActivityIndicatorView *loading = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
    
    
    loading.backgroundColor = [UIColor yellowColor];
    loading.frame = CGRectMake(100, 120, 120, 120);
    loading.hidesWhenStopped = NO; // ** 停止的时候是否隐藏，不只是隐藏风火轮自身，是把整个矩形区域都隐藏
    // tag属性是给一个控件加一个id标识，这个值对于一个控件来说一般都是唯一
    loading.tag = 1001;
    
    // 实例化一个按钮控件并设置按钮上的字
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button setTitle:@"开始" forState:UIControlStateNormal];
    button.frame = CGRectMake(100, 300, 120, 44);
    button.backgroundColor = [UIColor yellowColor];
    // 处理按钮的点击事件，这行代码就是告诉当前视图控制器用startOrStop：来处理该按钮的UIControlEventTouchDown事件
    [button addTarget:self action:@selector(startOrStop:) forControlEvents:UIControlEventTouchDown];
    
    [self.view addSubview:button];
    [self.view addSubview:loading];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - button action
// 这个方法就是判断风火轮的状态，开启的时候停止，停止的时候开启
- (void)startOrStop:(UIButton *)sender
{
    // 以为tag值对控件来说都是唯一，所以可以用viewWithTag方法取出来对应tag值的控件
    UIActivityIndicatorView *loaddingObj = (UIActivityIndicatorView *)[self.view viewWithTag:1001];

    if (loaddingObj.isAnimating) {
        [loaddingObj stopAnimating];
    } else {
        [loaddingObj startAnimating];
    }
}

@end
