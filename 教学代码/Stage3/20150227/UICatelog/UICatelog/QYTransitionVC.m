//
//  QYTransitionVC.m
//  UICatelog
//
//  Created by qingyun on 15-2-28.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import "QYTransitionVC.h"

#define kWidth  250
#define kHeight 200

@interface QYTransitionVC ()
@property (nonatomic, strong) UIView *containerView;
@property (nonatomic, strong) UIImageView *firstView;
@property (nonatomic, strong) UIImageView *secView;
@end

@implementation QYTransitionVC

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

    self.title = @"Transitions";
    
    [self setupSubViews];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.navigationController.toolbarHidden = NO;
}

- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
    self.navigationController.toolbarHidden = YES;
}
- (void)setupSubViews
{
    self.view.backgroundColor = [UIColor blackColor];
    
    _containerView = [[UIView alloc] initWithFrame:CGRectMake((CGRectGetWidth(self.view.frame)-kWidth)/2, 10, kWidth, kHeight)];
    [self.view addSubview:_containerView];
    
    _firstView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, kWidth, kHeight)];
    _firstView.image = [UIImage imageNamed:@"scene1.jpg"];
    [_containerView addSubview:_firstView];
    
    _secView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, kWidth, kHeight)];
    _secView.image = [UIImage imageNamed:@"scene2.jpg"];
    
    UIBarButtonItem *flipItem = [[UIBarButtonItem alloc] initWithTitle:@"Flip Image" style:UIBarButtonItemStyleDone target:self action:@selector(flipAction:)];
    UIBarButtonItem *curlItem = [[UIBarButtonItem alloc] initWithTitle:@"Curl Image" style:UIBarButtonItemStyleDone target:self action:@selector(curlAction:)];
    UIBarButtonItem *fixItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:self action:nil];
    fixItem.width = 5;
    UIBarButtonItem *flexItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:self action:nil];
    
    self.toolbarItems = @[flexItem, flipItem, fixItem, curlItem, flexItem];
}

- (void)curlAction:(UIBarButtonItem *)sender
{
    BOOL isFirstViewShow = _firstView.superview ? YES : NO;
    [UIView transitionFromView:(isFirstViewShow ? _firstView : _secView) toView:(isFirstViewShow ? _secView : _firstView) duration:0.75 options:(isFirstViewShow ? UIViewAnimationOptionTransitionCurlUp : UIViewAnimationOptionTransitionCurlDown) completion:^(BOOL finished) {

    }];
}

- (void)flipAction:(UIBarButtonItem *)sender
{
    BOOL isFirstViewShow = _firstView.superview ? YES : NO;
    [UIView transitionFromView:(isFirstViewShow ? _firstView : _secView) toView:(isFirstViewShow ? _secView : _firstView) duration:0.75 options:(isFirstViewShow ? UIViewAnimationOptionTransitionFlipFromLeft : UIViewAnimationOptionTransitionFlipFromRight) completion:^(BOOL finished) {
        
    }];
}

@end
