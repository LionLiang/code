//
//  QYViewController.m
//  QYUserGuideSample
//
//  Created by qingyun on 15-3-7.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import "QYViewController.h"

#define  kQYWidth self.view.bounds.size.width

@interface QYViewController () <UIScrollViewDelegate>

@end

@implementation QYViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    UIScrollView *scrollView = [[UIScrollView alloc ]initWithFrame:self.view.bounds];
    scrollView.pagingEnabled = YES;
    scrollView.contentSize = CGSizeMake(self.view.bounds.size.width * 4, self.view.bounds.size.height);
    scrollView.delegate = self;
    
    for (int i = 1; i < 5; i++) {
        UIImageView *imgView = [[UIImageView alloc] initWithFrame:CGRectMake(self.view.bounds.size.width*(i-1), 0, kQYWidth, self.view.bounds.size.height)];
        NSString *strImgName = [NSString stringWithFormat:@"new_feature_%d",i ];
        imgView.image = [UIImage imageNamed:strImgName];
               [scrollView addSubview:imgView];
    }

    [self.view addSubview:scrollView];
    
    UIPageControl *pagControl = [[UIPageControl alloc] initWithFrame:CGRectMake(40, self.view.bounds.size.height - 50, 240, 40)];
    pagControl.numberOfPages = 4;
    pagControl.currentPageIndicatorTintColor = [UIColor redColor];
    pagControl.pageIndicatorTintColor = [UIColor blackColor];
    pagControl.tag = 1000;
    [self.view addSubview:pagControl];
   
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -
#pragma mark UISCrollViewDelegate
- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    UIPageControl *pgControl = (UIPageControl*)[self.view viewWithTag:1000];
    pgControl.currentPage = scrollView.contentOffset.x / 320;
}

@end
