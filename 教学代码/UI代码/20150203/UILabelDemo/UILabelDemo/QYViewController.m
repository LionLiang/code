//
//  QYViewController.m
//  UILabelDemo
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
    
    UILabel *myLabel = [[UILabel alloc] initWithFrame:CGRectMake(50, 200, 100, 100)];
    
    myLabel.backgroundColor = [UIColor grayColor];
    
    myLabel.text = @"good day good day good day good day";
    myLabel.textColor = [UIColor blueColor];
    
    myLabel.shadowColor = [UIColor redColor]; // **
    myLabel.shadowOffset = CGSizeMake(0, 5); // ** 阴影颜色的偏移量
    
//    myLabel.highlightedTextColor = [UIColor blackColor];
//    myLabel.highlighted = YES; // 高亮颜色需要开启高亮状态
    
    myLabel.lineBreakMode = NSLineBreakByTruncatingMiddle; // *** 需要测试其他的效果
    
    myLabel.numberOfLines = 0; // ** 表示不限制行数
    myLabel.adjustsFontSizeToFitWidth = YES; // *是否没根据label的宽度调整字体的大小，默认是no
    
    
    [self.view addSubview: myLabel];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
