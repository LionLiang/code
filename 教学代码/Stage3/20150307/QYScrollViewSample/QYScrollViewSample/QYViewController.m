//
//  QYViewController.m
//  QYScrollViewSample
//
//  Created by qingyun on 15-3-7.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import "QYViewController.h"

@interface QYViewController ()

@end

@implementation QYViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
//    实例化一个uiscrolleView对象
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
    scrollView.tag = 1000;
//    设置scrollView的内容大小
    scrollView.contentSize = CGSizeMake(self.view.bounds.size.width*4, self.view.bounds.size.height*2);
//    设置是否有反弹效果,默认是yes
    scrollView.bounces = YES;
//    可以设置是否让scrollView滚动,默认是yes
    scrollView.scrollEnabled = YES;
//    设置pageEnable,默认是NO
    scrollView.pagingEnabled = YES;
    
//    控制是否显示scrollView的指示器，默认值都是yes
    scrollView.showsHorizontalScrollIndicator = YES;//控制水平方向的指示器
    scrollView.showsVerticalScrollIndicator = YES;//控制垂直方向的指示器
    
//    设置内容滚动的时候， 它的方向锁定，默认是NO
    scrollView.directionalLockEnabled = YES;
//    设置指示器风格
    scrollView.indicatorStyle = UIScrollViewIndicatorStyleBlack;
    
    scrollView.scrollIndicatorInsets = UIEdgeInsetsMake(20, 0, 0, 0);
    
    
    scrollView.backgroundColor = [UIColor orangeColor];
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(self.view.bounds.size.width, 0, self.view.bounds.size.width, 40)];
    label.text = @"你好青云";
    label.textAlignment = NSTextAlignmentCenter;
    label.backgroundColor = [UIColor yellowColor];
    [scrollView addSubview:label];
    [self.view addSubview:scrollView];
    
}


- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    UIScrollView *scrollView = (UIScrollView*)[self.view viewWithTag:1000];
    [scrollView flashScrollIndicators];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
