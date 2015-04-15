//
//  QYViewController.m
//  UIControlDemo
//
//  Created by qingyun on 15-2-5.
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
    _step = 1;
    
    
    // UIButton
    UIButton *button = [UIButton buttonWithType:UIButtonTypeContactAdd];
    button.frame = CGRectMake(20, 20, 80, 44);
    [button setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
   // [button setTitleColor:[UIColor whiteColor] forState:UIControlStateHighlighted];
    
    UIButton *button1 = [UIButton buttonWithType:UIButtonTypeInfoDark];
    button1.frame = CGRectMake(120, 20, 80, 44);
    
    UIButton *button2 = [UIButton buttonWithType:UIButtonTypeCustom];
    button2.frame = CGRectMake(220, 20, 80, 44);
    button2.backgroundColor = [UIColor grayColor];
    
    // 按钮的一些常用显示的内容都是通过下面的set方法来实现的，而不是直接操作属性
    [button2 setTitle:@"点我" forState:UIControlStateNormal];
    [button2 setTitle:@"点过了" forState:UIControlStateHighlighted];
    [button2 setTitleColor:[UIColor yellowColor] forState:UIControlStateNormal];
    [button2 setTitleColor:[UIColor whiteColor] forState:UIControlStateHighlighted];
    // 图片和文字会并列显示，前提是图片没有大到覆盖整个按钮，如果太大，只会显示图片
    [button2 setImage:[UIImage imageNamed:@"btn2"] forState:UIControlStateNormal];
    [button2 setImage:[UIImage imageNamed:@"btn3"] forState:UIControlStateHighlighted];
    [button2 setImage:[UIImage imageNamed:@"btn4"] forState:UIControlStateSelected];
    
    //contentEdgeInsets titleEdgeInsets imageEdgeInsets 这三个属性可以调整按钮上图片和文字内容的具体放置位置
    
    [button2 addTarget:self action:@selector(selectButton:) forControlEvents:UIControlEventTouchDown];

    
    [self.view addSubview:button];
    [self.view addSubview:button1];
    [self.view addSubview:button2];
    
    
    
    // UISlider
    _slider = [[UISlider alloc] initWithFrame:CGRectMake(20,60, 280, 44)];
    _slider.minimumValue = 1;
    _slider.maximumValue = 100;
    //_slider.transform = CGAffineTransformMakeRotation(M_PI * 0.5); // 设置滑动条垂直布局，自己试验CGAffineTransformMakeRotation定义文件中其他的一些方法
    //slider.continuous = NO; 值的变化是否连续监控
    [_slider addTarget:self  action:@selector(sliderChange:) forControlEvents:UIControlEventValueChanged];
    // 自定义slider
    [_slider setThumbImage:[UIImage imageNamed:@"thumb"] forState:UIControlStateNormal];// 设置拖动按钮的图片
    [_slider setMinimumTrackImage:[UIImage imageNamed:@"min"] forState:UIControlStateNormal];// 处于最小值的图片
    [_slider setMaximumTrackImage:[UIImage imageNamed:@"max"] forState:UIControlStateNormal];// 处于最大值的图片
    
    [self.view addSubview:_slider];
    
    
    // UISwitch
    UISwitch *mySwitch = [[UISwitch alloc] initWithFrame:CGRectMake(100, 150, 120, 44)];
    mySwitch.tintColor = [UIColor greenColor];
    mySwitch.onTintColor = [UIColor purpleColor];
    mySwitch.thumbTintColor = [UIColor brownColor];
    [mySwitch setOn:YES animated:YES]; // 设置选中
    [self.view addSubview:mySwitch];
    
    
    // UISegmentedControl
    //UISegmentedControl *segmentControl = [[UISegmentedControl alloc] initWithFrame:CGRectMake(20, 200, 280, 44)];
    
    //UISegmentedControlStyle 风格
    UISegmentedControl *segmentControl = [[UISegmentedControl alloc] initWithItems:@[@"one",@"two",@"three"]];
    segmentControl.frame = CGRectMake(20, 200, 280, 44);
    segmentControl.tintColor = [UIColor magentaColor];
    segmentControl.tag = 1001;
    
    // 分段按钮只能有一个被激活
    [segmentControl addTarget:self action:@selector(selectSegmentControl:) forControlEvents:UIControlEventValueChanged];
    
    // 需要自己测试的
//    - (void)insertSegmentWithTitle:(NSString *)title atIndex:(NSUInteger)segment animated:(BOOL)animated; // insert before segment number. 0..#segments. value pinned
//    - (void)insertSegmentWithImage:(UIImage *)image  atIndex:(NSUInteger)segment animated:(BOOL)animated;
//    - (void)removeSegmentAtIndex:(NSUInteger)segment animated:(BOOL)animated;
//    - (void)removeAllSegments;
//    
//    - (void)setTitle:(NSString *)title forSegmentAtIndex:(NSUInteger)segment;      // can only have image or title, not both. must be 0..#segments - 1 (or ignored). default is nil
//    - (NSString *)titleForSegmentAtIndex:(NSUInteger)segment;
//    
//    - (void)setImage:(UIImage *)image forSegmentAtIndex:(NSUInteger)segment;       // can only have image or title, not both. must be 0..#segments - 1 (or ignored). default is nil
//    - (UIImage *)imageForSegmentAtIndex:(NSUInteger)segment;
//    
//    - (void)setWidth:(CGFloat)width forSegmentAtIndex:(NSUInteger)segment;         // set to 0.0 width to autosize. default is 0.0
//    - (CGFloat)widthForSegmentAtIndex:(NSUInteger)segment;
//    
//    - (void)setContentOffset:(CGSize)offset forSegmentAtIndex:(NSUInteger)segment; // adjust offset of image or text inside the segment. default is (0,0)
//    - (CGSize)contentOffsetForSegmentAtIndex:(NSUInteger)segment;
//    
//    - (void)setEnabled:(BOOL)enabled forSegmentAtIndex:(NSUInteger)segment;        // default is YES
//    - (BOOL)isEnabledForSegmentAtIndex:(NSUInteger)segment;
    
    
    [self.view addSubview:segmentControl];
    
    // UIPageCOntrol
    UIPageControl *page = [[UIPageControl alloc] initWithFrame:CGRectMake(20, 280, 280, 44)];
    page.backgroundColor = [UIColor greenColor];
    page.numberOfPages = 10; // 总页数
    //page.currentPage = 5; // 选中的页数
    page.pageIndicatorTintColor = [UIColor whiteColor]; // 分页点的颜色
    page.currentPageIndicatorTintColor = [UIColor redColor]; // 选中点的颜色
    page.hidesForSinglePage = NO;
    
    [page addTarget:self action:@selector(pageChange:) forControlEvents:UIControlEventValueChanged];
    
    [self.view addSubview:page];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - action
// UIControl事件方法签名的中参数就是值执行此动作的控件本身
- (void)selectButton:(UIButton *)sender
{
    if (sender.isSelected) {
        sender.selected = NO;
    } else {
        sender.selected = YES;
    }
    
    // 控制slider的拖动
    [_slider setValue:_step animated:YES];  //设置slider的当前选中位置
    _step += 10;

    // 控制segment的修改
    // ******* 要注意这个强转是错误的强转，会丢失UISegmentedControl成员变量的内存空间，所以转成以后的segObj1不是真正意义的UISegmentedControl
    // UIControl *myControl = [[UIControl alloc] initWithFrame:CGRectZero];
    // UISegmentedControl *segObj1 = (UISegmentedControl *)myControl;
    
    // 因为viewWithTag方法返回的对象是UIView，不是UISegmentedControl，所以不能用UIView类型来 接收 ，需要转成UISegmentedControl，而且我们知道它本来就是一个UISegmentedControl
    UISegmentedControl *segObj = (UISegmentedControl *)[self.view viewWithTag:1001];
    // UIView *segObj1 = [self.view viewWithTag:1001];
    
    [segObj insertSegmentWithTitle:@"four" atIndex:2 animated:YES];
    
    // 在指定索引位置加入新的按钮
    [segObj insertSegmentWithImage:[UIImage imageNamed:@"activity_card_write"] atIndex:1 animated:YES];
    [segObj insertSegmentWithImage:[UIImage imageNamed:@"activity_card_locate"] atIndex:2 animated:YES];
    [segObj removeSegmentAtIndex:0 animated:NO]; // 移除指定索引位置的按钮
    
}

- (void)sliderChange:(UISlider *)sender
{
    NSLog(@"slider value >>>>>> %f", sender.value);
}

- (void)selectSegmentControl:(UISegmentedControl *)sender
{
    NSLog(@"selected >>>>>> %ld", (long)sender.selectedSegmentIndex);
}

- (void)pageChange:(UIPageControl *)sender
{
    NSLog(@"current page >>>>>>> %ld", (long)sender.currentPage);
}
                                
@end
