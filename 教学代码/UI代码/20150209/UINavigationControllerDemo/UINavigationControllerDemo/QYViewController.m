//
//  QYViewController.m
//  UINavigationControllerDemo
//
//  Created by qingyun on 15-2-6.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import "QYViewController.h"

#import "SecondViewController.h"

@interface QYViewController ()

@end

@implementation QYViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title = @"First";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(120, 140, 80, 44);
    button.backgroundColor = [UIColor grayColor];
    
    // 按钮的一些常用显示的内容都是通过下面的set方法来实现的，而不是直接操作属性
    [button setTitle:@"PUSH" forState:UIControlStateNormal];
    
    [button addTarget:self action:@selector(pushNext) forControlEvents:UIControlEventTouchDown];
    
    [self.view addSubview:button];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)pushNext
{
    NSLog(@"navigation >>>>>> %@", self.navigationController);
    SecondViewController *secondVC = [[SecondViewController alloc] init];
    // self -----> firstVC
    // self.navigationController ------> navgationVC
    [self.navigationController pushViewController:secondVC animated:YES];
}

- (void)viewWillAppear:(BOOL)animated
{
//    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(120, 240, 80, 44)];
//    label.text = @"2和3都挂了";
//    [self.view addSubview:label];
    NSLog(@"virecontrollers >>>>>> %@", [self.navigationController viewControllers]); //打印当前栈中的视图控制器
}

- (void)viewDidAppear:(BOOL)animated
{
    NSLog(@">>>>> %s <<<<<<<", __func__);
    // 判断导航条是否隐藏（工具条的原理一样）
    if (self.navigationController.navigationBarHidden) {
        [self.navigationController setNavigationBarHidden:NO];
    }
}

- (void)viewWillDisappear:(BOOL)animated
{
    
}
- (void)viewDidDisappear:(BOOL)animated
{

}

- (void)navigationController:(UINavigationController *)navigationController didShowViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    NSLog(@"<<<<<<<<< %s >>>>>>>>", __func__);
}
@end
