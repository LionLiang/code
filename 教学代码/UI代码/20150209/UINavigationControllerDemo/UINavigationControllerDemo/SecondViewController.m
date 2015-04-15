//
//  SecondViewController.m
//  UINavigationControllerDemo
//
//  Created by qingyun on 15-2-6.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import "SecondViewController.h"

#import "ThirdViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title = @"Second";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(120, 80, 80, 44);
    button.backgroundColor = [UIColor grayColor];
    
    // 按钮的一些常用显示的内容都是通过下面的set方法来实现的，而不是直接操作属性
    [button setTitle:@"PUSH" forState:UIControlStateNormal];
    
    [button addTarget:self action:@selector(pushNext) forControlEvents:UIControlEventTouchDown];
    
    [self.view addSubview:button];
    
    UIButton *button1 = [UIButton buttonWithType:UIButtonTypeCustom];
    button1.frame = CGRectMake(120, 140, 80, 44);
    button1.backgroundColor = [UIColor greenColor];
    
    // 按钮的一些常用显示的内容都是通过下面的set方法来实现的，而不是直接操作属性
    [button1 setTitle:@"POP" forState:UIControlStateNormal];
    
    [button1 addTarget:self action:@selector(popPre) forControlEvents:UIControlEventTouchDown];
    
    [self.view addSubview:button1];
    
    UIButton *button2 = [UIButton buttonWithType:UIButtonTypeCustom];
    button2.frame = CGRectMake(120, 200, 80, 44);
    button2.backgroundColor = [UIColor blueColor];
    
    // 按钮的一些常用显示的内容都是通过下面的set方法来实现的，而不是直接操作属性
    [button2 setTitle:@"ShowTool" forState:UIControlStateNormal];
    
    [button2 addTarget:self action:@selector(showToolBar) forControlEvents:UIControlEventTouchDown];
    
    [self.view addSubview:button2];
    
    
    // 设置NavigationBar
    // titleview
    UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 120, 22)];
    titleLabel.text = @"Second";
    titleLabel.backgroundColor = [UIColor greenColor];
    titleLabel.textColor = [UIColor brownColor];
    // 设置当前界面的标题，可以用UIView来设计，赋给 self.navigationItem.titleView
    self.navigationItem.titleView = titleLabel;
    //self.navigationItem.title = @"SECOND";
    
    // 设置UIBarButtonItem
//    UIBarButtonItem *rightItem = [[UIBarButtonItem alloc] initWithTitle:@"right" style:UIBarButtonItemStyleBordered target:self action:@selector(clickRight)];
//    self.navigationItem.rightBarButtonItem = rightItem;
//    UIBarButtonItem *leftItem = [[UIBarButtonItem alloc]  initWithBarButtonSystemItem:UIBarButtonSystemItemBookmarks target:self action:@selector(clickRight)];
//    self.navigationItem.leftBarButtonItem = leftItem;
//    self.navigationItem.leftItemsSupplementBackButton = YES; // 该属性决定当前试图控制器的left和backBarButtonItem是否可以共存，5.0之后可用
    
    //关于UIBarButtonItem的初始化方法
    /*
    // 使用图片初始化
    -(id)initWithImage:(UIImage *)image style:(UIBarButtonItemStyle)style target:(id)target action:(SEL)action;
    
    // 使用文本初始化
    -(id)initWithTitle:(N SString *)title style:(UIBarButtonItemStyle)style target:(id)target action:(SEL)action;
    
    // 使用系统风格初始化
    -(id)initWithBarButtonSystemItem:(UIBarButtonSystemItem)systemItem target:(id)target action:(SEL)action;
    
    // 用自定义UIView初始化
    - (id)initWithCustomView:(UIView *)customView;
    */
    
    // 设置UIToolbar
    
    UIBarButtonItem *item1 = [[UIBarButtonItem alloc]  initWithBarButtonSystemItem:UIBarButtonSystemItemBookmarks target:self action:@selector(clickRight)];
    UIBarButtonItem *item2 = [[UIBarButtonItem alloc]  initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(clickRight)];

    
    UIBarButtonItem *item3 = [[UIBarButtonItem alloc]  initWithBarButtonSystemItem:UIBarButtonSystemItemEdit target:self action:@selector(clickRight)];
    UIBarButtonItem *item4 = [[UIBarButtonItem alloc]  initWithBarButtonSystemItem:UIBarButtonSystemItemCamera target:self action:@selector(clickRight)];
    
    // 专门用来设置按钮间隔的UIBarButtonItem
    UIBarButtonItem *spaceItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil];
    // 设置固定宽度的间隔

    UIBarButtonItem *spaceItem1 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:nil action:nil];
    spaceItem1.width = 50;
    
    // 设置当前视图控制器工具条上的按钮
    [self setToolbarItems:@[item1,spaceItem,item2,spaceItem1,item3,item4] animated:YES];
    
}


- (void)viewWillAppear:(BOOL)animated
{
    NSLog(@"virecontrollers >>>>>> %@", [self.navigationController viewControllers]);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)pushNext
{
    NSLog(@"navigation >>>>>> %@", self.navigationController);
    ThirdViewController *thirdVC = [[ThirdViewController alloc] init];
    // self.navigationController ----> navigationVC
    [self.navigationController pushViewController:thirdVC animated:YES];
}

- (void)popPre
{
    NSLog(@"navigation >>>>>> %@", self.navigationController);
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)showToolBar
{
    // 设置导航条和工具条的隐藏状态
    [self.navigationController setToolbarHidden:NO animated:YES];
    [self.navigationController setNavigationBarHidden:YES animated:YES];
}

- (void)clickRight
{
    NSLog(@"%s>>>>>>>", __func__);
    [self.navigationController popViewControllerAnimated:YES];
}

@end
