//
//  QYViewController.m
//  UIAlertViewDemo
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
    
    // 实例化一个按钮控件并设置按钮上的字
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button setTitle:@"ALERT" forState:UIControlStateNormal];
    button.frame = CGRectMake(100,  150, 120, 44);
    button.backgroundColor = [UIColor yellowColor];
    // 处理按钮的点击事件，这行代码就是告诉当前视图控制器用startOrStop：来处理该按钮的UIControlEventTouchDown事件
    [button addTarget:self action:@selector(startOrStop:) forControlEvents:UIControlEventTouchDown];
    
    [self.view addSubview:button];
    
    
    // 实例化一个按钮控件并设置按钮上的字
    UIButton *button1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button1 setTitle:@"SHEET" forState:UIControlStateNormal];
    button1.frame = CGRectMake(100, 300, 120, 44);
    button1.backgroundColor = [UIColor yellowColor];
    // 处理按钮的点击事件，这行代码就是告诉当前视图控制器用startOrStop：来处理该按钮的UIControlEventTouchDown事件
    [button1 addTarget:self action:@selector(doAction) forControlEvents:UIControlEventTouchDown];
    
    [self.view addSubview:button];
    [self.view addSubview:button1];

    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - button action
- (void)startOrStop:(UIButton *)sender
{
    // 注意结合模拟器中alertview，理解各个参数的含义
    // 特别是cancelButton的位置，跟其他平台或语言的常规不太一样
    // 注意otherButtonTitles可以接收多个button标题，但是一定要以nil结尾
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"警告" message:@"这是一个警告！" delegate:self cancelButtonTitle:@"取消" otherButtonTitles:@"好的",@"我才不管",@"以后再说", nil];
    //alert.alertViewStyle = UIAlertViewStyleLoginAndPasswordInput;
    [alert show];
}
- (void)doAction
{
    // 注意有一个重要的按钮destructiveButtonTitle，一般是用来设置比较重要（危险）的操作
    // 注意UIActionSheet的代理必须要遵循UIActionSheetDelegate协议
    UIActionSheet *actionSheet = [[UIActionSheet alloc] initWithTitle:@"请选择" delegate:self cancelButtonTitle:@"取消" destructiveButtonTitle:@"小心！！！" otherButtonTitles:@"看看再说",@"随便吧", nil];
    [actionSheet showInView:self.view]; // 需要注意actionsheet需要依托一个试图才能显示
}



#pragma mark - Delegate
// AlertView最重要的代理，捕获到点击其中的哪一个按钮
// 特别需要注意的是 cancelButtonTitle 对应的按钮索引是 0！！！！*******
- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    NSLog(@"我点击了 》》》》》 %ld", buttonIndex);
    
}
// actionsheet的destructiveButtonTitle的索引1，其他依次从上往下加1
- (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex
{
    NSLog(@"我点击了 》》》》》 %ld", buttonIndex);
}

@end
