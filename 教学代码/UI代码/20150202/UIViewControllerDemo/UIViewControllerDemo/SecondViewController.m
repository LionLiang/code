//
//  SecondViewController.m
//  UIViewControllerDemo
//
//  Created by qingyun on 15-2-2.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
// loadView的错误做法
// 1.完全错误，这个时候self.view是nil，所以也就不能添加任何子视图了
//- (void)loadView
//{
//
//}
// 2.也不推荐，造了两个一模一样的view，是资源浪费
//- (void)loadView
//{
//    [super loadView];
//    self.view = [[UIView alloc] init];
//}
//3.也不推荐，没有意义
//- (void)loadView
//{
//    [super loadView];
//}

/*------------------*/
//如果说对系统默认生成的view不满意，需要做一些大的改动，可以重写loadView，
//不管做什么最后肯定要对self.view赋值，要保证最终走完loadVIew的时候，self.view是有值的
//一般情况都不需要重写此方法
/*------------------*/

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    //[self.view addSubview:<#(UIView *)#>];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
    NSLog(@"<<<<<< %s >>>>>>", __func__);
}

@end
