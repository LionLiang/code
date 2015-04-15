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
    
    [self.view addSubview:_textA];
    [self.view addSubview:myButton];
    
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
    //secondVC.textContent = _textA.text;
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
}

@end
