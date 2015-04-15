//
//  QYViewController.m
//  UIViewControllerDemo
//
//  Created by qingyun on 15-2-2.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import "QYViewController.h"

@interface QYViewController ()

@end

@implementation QYViewController

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
    
    UIView *firstView = [[UIView alloc] initWithFrame:CGRectMake(100, 200, [UIScreen mainScreen].bounds.size.width-100*2, [UIScreen mainScreen].bounds.size.height-200*2)];
    firstView.backgroundColor = [UIColor redColor];
    firstView.alpha = 0.5;
    
    // 通过NSStringFromCGPoint来输出一个点
    NSLog(@"bounds.size >>>>>>>> %@", NSStringFromCGSize(firstView.bounds.size));
    NSLog(@"center1 >>>>>>>> %@", NSStringFromCGPoint(firstView.center));
    //    firstView.center = CGPointMake(200, 200);
    //    NSLog(@"bounds.size >>>>>>>> %@", NSStringFromCGSize(firstView.frame.size));
    //    NSLog(@"center2 >>>>>>>> %@", NSStringFromCGPoint(firstView.center));
    // 改变center点可以改变uiview的位置，但是不会改变矩形区域大小
    
    firstView.bounds = CGRectMake(0, 0, 100, 100);
    NSLog(@"frame3.size >>>>>>>> %@", NSStringFromCGSize(firstView.frame.size));
    NSLog(@"center3 >>>>>>>> %@", NSStringFromCGPoint(firstView.center));
    // 改变size（frame和bouns中的一样）,可以改变试图的尺寸大小，但是不能改变center点
    
    [self.view addSubview:firstView];
    
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

@end
