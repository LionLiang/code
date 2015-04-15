//
//  MyClockViewController.m
//  UITabBarControllerDemo
//
//  Created by qingyun on 15-2-7.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import "MyClockViewController.h"

@interface MyClockViewController ()

@end

@implementation MyClockViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    
    UIButton *button2 = [UIButton buttonWithType:UIButtonTypeCustom];
    button2.frame = CGRectMake(120, 200, 80, 44);
    button2.backgroundColor = [UIColor blueColor];
    
    // 按钮的一些常用显示的内容都是通过下面的set方法来实现的，而不是直接操作属性
    [button2 setTitle:@"ShowAction" forState:UIControlStateNormal];
    
    [button2 addTarget:self action:@selector(showActionSheet) forControlEvents:UIControlEventTouchDown];
    
    [self.view addSubview:button2];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (void)showActionSheet
{
    UIActionSheet *action = [[UIActionSheet alloc] initWithTitle:@"test" delegate:nil cancelButtonTitle:@"cancel" destructiveButtonTitle:@"xiaoxin" otherButtonTitles:@"ok",nil];
    
    [action showInView:self.view];
}

@end
