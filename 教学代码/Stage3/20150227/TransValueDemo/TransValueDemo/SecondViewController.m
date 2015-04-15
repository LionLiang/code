//
//  SecondViewController.m
//  TransValueDemo
//
//  Created by qingyun on 15-2-26.
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
        self.title = @"second";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    _textB = [[UITextField alloc] initWithFrame:CGRectMake(100, 100, 120, 40)];
    _textB.borderStyle = UITextBorderStyleBezel;
    //_textB.text = self.textContent;
    //_textB.text = @"12313";
    //_textB.tag =
    
    UIButton *myButton = [UIButton buttonWithType:UIButtonTypeInfoDark];
    myButton.frame = CGRectMake(100, _textB.frame.origin.y+40+40, 120, 40);
    [myButton addTarget:self action:@selector(clickAdd) forControlEvents:UIControlEventTouchDown];
    
    [self.view addSubview:_textB];
    [self.view addSubview:myButton];
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

- (void)clickAdd
{
    [self.transValueDelegate changeName:_textB.text];
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)changeName:(NSString *)name
{
    NSLog(@"name >>>> %@", self.textB.text);
    _textB.text = name;
}

@end
