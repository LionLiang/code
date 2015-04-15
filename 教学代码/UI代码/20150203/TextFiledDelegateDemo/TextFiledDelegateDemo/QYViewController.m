//
//  QYViewController.m
//  TextFiledDelegateDemo
//
//  Created by qingyun on 15-2-3.
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
    [super viewDidLoad]; //viewDidload 中的[super viewDidLoad]不要删掉，因为下面所有的视图布局都是在这个基础来完成的
    // Do any additional setup after loading the view.
    
    UITextField *myText = [[UITextField alloc]  initWithFrame:CGRectMake(100, 150, 120, 44)];
    myText.borderStyle = UITextBorderStyleBezel;
    myText.placeholder = @"请输入";
    // 指定文本的代理，但是必须要保证当前所指定的ViewController要遵循它的协议
    myText.delegate = self;
    myText.clearButtonMode = UITextFieldViewModeAlways;
    
    [self.view addSubview:myText];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITextfiled delegate
// 这是UITextfiled的代理方法，作用是捕获到在文本框编辑放生变化
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    NSLog(@"location >>>> %d, length >>>>> %d", range.location, range.length);
    NSLog(@"string >>>>>>>>> %@", string);
    return YES;
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
