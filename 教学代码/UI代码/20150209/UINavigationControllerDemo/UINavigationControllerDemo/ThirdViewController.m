//
//  ThirdViewController.m
//  UINavigationControllerDemo
//
//  Created by qingyun on 15-2-6.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import "ThirdViewController.h"
#import "QYViewController.h"

@interface ThirdViewController ()

@end

@implementation ThirdViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"Third";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // Do any additional setup after loading the view.
    UIButton *button1 = [UIButton buttonWithType:UIButtonTypeCustom];
    button1.frame = CGRectMake(120, 140, 80, 44);
    button1.backgroundColor = [UIColor greenColor];
    
    // 按钮的一些常用显示的内容都是通过下面的set方法来实现的，而不是直接操作属性
    [button1 setTitle:@"POP" forState:UIControlStateNormal];
    
    [button1 addTarget:self action:@selector(popPre) forControlEvents:UIControlEventTouchDown];
    
    [self.view addSubview:button1];
    
    // Do any additional setup after loading the view.
    UIButton *button2 = [UIButton buttonWithType:UIButtonTypeCustom];
    button2.frame = CGRectMake(120, 200, 80, 44);
    button2.backgroundColor = [UIColor redColor];
    
    // 按钮的一些常用显示的内容都是通过下面的set方法来实现的，而不是直接操作属性
    [button2 setTitle:@"ROOT" forState:UIControlStateNormal];
    
    [button2 addTarget:self action:@selector(popRoot) forControlEvents:UIControlEventTouchDown];
    
    [self.view addSubview:button2];
    
    
    // Do any additional setup after loading the view.
    UIButton *button3 = [UIButton buttonWithType:UIButtonTypeCustom];
    button3.frame = CGRectMake(120, 260, 80, 44);
    button3.backgroundColor = [UIColor magentaColor];
    
    // 按钮的一些常用显示的内容都是通过下面的set方法来实现的，而不是直接操作属性
    [button3 setTitle:@"ANY" forState:UIControlStateNormal];
    
    [button3 addTarget:self action:@selector(popAny) forControlEvents:UIControlEventTouchDown];
    
    [self.view addSubview:button3];
    
    NSLog(@"virecontrollers >>>>>> %@", [self.navigationController viewControllers]);
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// 回到上一个试图控制器
- (void)popPre
{
    NSLog(@"navigation >>>>>> %@", self.navigationController);
    [self.navigationController popViewControllerAnimated:YES];
}
// 回到根试图控制器
- (void)popRoot
{
    NSLog(@"navigation >>>>>> %@", self.navigationController);
    [self.navigationController popToRootViewControllerAnimated:YES];
}
// 回到指定的
- (void)popAny
{
    NSLog(@"navigation >>>>>> %@", self.navigationController);
    
    //UIViewController *firstVC = [[QYViewController alloc] init];
    // 往指定试图控制器上跳转的时候，要保证该视图 控制器存在于栈中
    UIViewController *toVC = [[self.navigationController viewControllers] objectAtIndex:0];
    
    [self.navigationController popToViewController:toVC animated:YES];
}

@end
