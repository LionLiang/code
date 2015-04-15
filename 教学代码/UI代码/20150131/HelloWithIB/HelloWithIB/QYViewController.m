//
//  QYViewController.m
//  HelloWithIB
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
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

    
    
    // StoryBoard 和 手写代码共用，注意不要覆盖区域
    UITextField *nameText = [[UITextField alloc]  initWithFrame:CGRectMake(135, 168, 120, 30)];
    nameText.placeholder = @"请输入您的名字";
    
    UITextField *idText = [[UITextField alloc]  initWithFrame:CGRectMake(135, 220, 120, 30)];
    idText.placeholder = @"请输入您的学号";
    
    [self.view addSubview:nameText];
    [self.view addSubview:idText];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
