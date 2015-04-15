//
//  QYViewController.m
//  QYScrollViewDelegateSample
//
//  Created by qingyun on 15-3-7.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import "QYViewController.h"

@interface QYViewController ()<UIScrollViewDelegate>
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

//@property (nonatomic, strong) UIImageView *imgView;

@end

@implementation QYViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor orangeColor];
	self.scrollView.delegate = self;
    self.scrollView.contentSize = CGSizeMake(self.view.bounds.size.width*5, self.view.bounds.size.height*5);
    self.scrollView.minimumZoomScale = 0.5f;
    self.scrollView.maximumZoomScale = 3.0f;
//    设置放大、缩小是否允许反弹效果
    self.scrollView.bouncesZoom = NO;
    
    UIImageView *imgView = [[UIImageView alloc]initWithFrame:self.scrollView.bounds];
    imgView.tag = 1000;
    imgView.image = [UIImage imageNamed:@"new_feature_2"];
    
    [self.scrollView addSubview:imgView];
    
    UILabel *bottomLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, self.view.bounds.size.height-40, self.view.bounds.size.width, 40)];
    bottomLabel.text = @"你好";
    bottomLabel.textAlignment = NSTextAlignmentCenter;
    bottomLabel.backgroundColor = [UIColor yellowColor];
    [self.scrollView addSubview:bottomLabel];
    

    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -
#pragma mark UIScrollViewDelegae

//当UIScrollView结束滚动后会调用这个方法
- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
//    __func__是一个内置的宏，表示的当前调用的这个方法的方法名字
    NSLog(@"%s,x:%f,y:%f",__func__,scrollView.contentOffset.x,scrollView.contentOffset.y);
}
// called on start of dragging (may require some time and or distance to move)
//当UIScrollView对象将要开始拖动的时候调用
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView
{
    NSLog(@"%s",__func__);
}
// called on finger up if the user dragged. velocity is in points/millisecond. targetContentOffset may be changed to adjust where the scroll view comes to rest
- (void)scrollViewWillEndDragging:(UIScrollView *)scrollView withVelocity:(CGPoint)velocity targetContentOffset:(inout CGPoint *)targetContentOffset
{
    NSLog(@"%s",__func__);
}
// called on finger up if the user dragged. decelerate is true if it will continue moving afterwards
- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate
{
    NSLog(@"%s",__func__);
}

- (void)scrollViewWillBeginDecelerating:(UIScrollView *)scrollView
{
    NSLog(@"%s",__func__);
}
- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
    NSLog(@"%s",__func__);
}


////当UIScrollView结束放大，缩小之后会调用这个方法
- (void)scrollViewDidZoom:(UIScrollView *)scrollView
{
    NSLog(@"%s",__func__);
}
- (void)scrollViewDidEndScrollingAnimation:(UIScrollView *)scrollView
{
    NSLog(@"%s",__func__);
}
//返回现在想要对scrollView视图上的哪个视图做放大，缩小动作
- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView
{
    return [scrollView viewWithTag:1000];
}

- (void)scrollViewWillBeginZooming:(UIScrollView *)scrollView withView:(UIView *)view
{
    
}
- (void)scrollViewDidEndZooming:(UIScrollView *)scrollView withView:(UIView *)view atScale:(CGFloat)scale
{
    NSLog(@"%s,%f",__func__,scale);
}
//
- (BOOL)scrollViewShouldScrollToTop:(UIScrollView *)scrollView
{
    NSLog(@"%s",__func__);
    return YES;
}
- (void)scrollViewDidScrollToTop:(UIScrollView *)scrollView
{
    NSLog(@"%s",__func__);
    UIAlertView *alertView = [[UIAlertView alloc]initWithTitle:@"hello" message:@"top" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:@"Cancel", nil];
    [alertView show];
}
#pragma mark -
#pragma mark UIButton action
- (IBAction)onButton:(UIButton *)sender {
    NSLog(@"%s",__func__);
//    [self.scrollView scrollRectToVisible:CGRectMake(self.view.bounds.size.width, 0, self.scrollView.bounds.size.width, self.scrollView.bounds.size.height) animated:NO];
    [self.scrollView setContentOffset:CGPointMake(self.view.bounds.size.width, 0)];
    
}

@end
