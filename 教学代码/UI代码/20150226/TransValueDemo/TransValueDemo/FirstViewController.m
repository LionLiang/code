//
//  FirstViewController.m
//  TransValueDemo
//
//  Created by qingyun on 15-2-26.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import "FirstViewController.h"

#import "SecondViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"first";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _textA = [[UITextField alloc] initWithFrame:CGRectMake(100, 100, 120, 40)];
    _textA.borderStyle = UITextBorderStyleBezel;
    UIButton *myButton = [UIButton buttonWithType:UIButtonTypeContactAdd];
    myButton.frame = CGRectMake(100, _textA.frame.origin.y+40+40, 120, 40);
//    UILabel *label = [UILabel alloc] initWithFrame:CGRectMake(100, 250, 120, 40)
    [myButton addTarget:self action:@selector(clickAdd) forControlEvents:UIControlEventTouchDown];
    
    // 建立通知中心，通知中心的名字叫easyNotify
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(changeValue:) name:@"easyNotify" object:nil];
    //[[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(changeValue2:) name:@"easyNotify2" object:nil];
    
    [self.view addSubview:myButton];
     [self.view addSubview:_textA];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)clickAdd
{
   SecondViewController *secondVC = [[SecondViewController alloc] init];
    // 1.属性传值
    secondVC.textContent = _textA.text;
    secondVC.transValueDelegate = self;
    self.transValueDelegate = secondVC;
    //secondVC.transValueDelegate = self;
    NSLog(@"texta >>> %@",_textA.text);
    [self.transValueDelegate changeName:_textA.text];
    [self.navigationController pushViewController:secondVC animated:YES];
}

- (void)changeName:(NSString *)name
{
    _textA.text = name;
     NSLog(@"texta >>> %@",_textA.text);
}

- (void)changeValue:(NSNotification *)sender
{
    // 通知中心中的object对象就是之前secondVC发送给它的那个对象，就是说textField变量指向textB
    NSDictionary *dict = sender.object;
    _textA.text = [dict objectForKey:@"textA"];
}
@end
