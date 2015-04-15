//
//  QYViewController.m
//  UIIMAGEVIEWDEMO
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
    
    // 按照正常 UIView的初始化方法
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(100, 100, 120, 120)];
    imageView.backgroundColor = [UIColor brownColor];
    
    imageView.image = [UIImage imageNamed:@"beaury"];
    imageView.highlightedImage = [UIImage imageNamed:@"beaury"]; //系统默认读取的是png图片，如果不是的就要写上后缀名
    
    // 按UIImageView自有的初始化方法初始化，可以同时制定高亮的和不高亮的图片，需要用高亮状态控制
    UIImageView *imageView2 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"beaury"] highlightedImage:[UIImage imageNamed:@"beaury"]];
    imageView2.frame = CGRectMake(100, 250, 120, 120);
    imageView2.highlighted = YES; // 因为开启了高亮状态，所以直接显示高亮的图片
    
    
    UIImageView *imageView3 = [[UIImageView alloc] initWithFrame:CGRectMake(100, imageView2.frame.origin.y+imageView2.frame.size.height+20, 120, 120)];
    
    // 简单的多图动画
    imageView3.animationImages = @[
                                   [UIImage imageNamed:@"5"],
                                   [UIImage imageNamed:@"51"],
                                   [UIImage imageNamed:@"3"],
                                   [UIImage imageNamed:@"4"]
                                   ];
    
    imageView3.animationDuration = 2; // 动画的时间间隔
    imageView3.animationRepeatCount = 2; // 动画的重复次数

    [imageView3 startAnimating]; // 启动动画
    
    
    // 理解UIView的contentMode
    // ***** 比较重要，有多种模式可以测试
    // 默认是填充
    UIImageView *imageView4 = [[UIImageView alloc] initWithFrame:CGRectMake(100, 100, 120, 120)];
    imageView4.backgroundColor = [UIColor magentaColor];
    imageView4.image = [UIImage imageNamed:@"51"];
    
    // 压缩
    UIImageView *imageView5 = [[UIImageView alloc] initWithFrame:CGRectMake(100, imageView4.frame.origin.y+imageView4.frame.size.height+20, 120, 120)];
    imageView5.backgroundColor = [UIColor yellowColor];
    imageView5.image = [UIImage imageNamed:@"51"];
    imageView5.contentMode = UIViewContentModeScaleAspectFit;
    
    // 拉伸
    UIImageView *imageView6 = [[UIImageView alloc] initWithFrame:CGRectMake(100, imageView5.frame.origin.y+imageView5.frame.size.height+20, 120, 120)];
    imageView6.backgroundColor = [UIColor blueColor];
    imageView6.image = [UIImage imageNamed:@"51"];
    imageView6.contentMode = UIViewContentModeScaleAspectFill;
    //imageView6.contentMode = UIViewContentModeTopLeft;
    //imageView6.clipsToBounds = YES;
    

    // 把视图添加到self.view
//    [self.view addSubview:imageView];
//    [self.view addSubview:imageView2];
//    [self.view addSubview:imageView3];
    
    [self.view addSubview:imageView4];
    [self.view addSubview:imageView5];
    [self.view addSubview:imageView6];

    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
