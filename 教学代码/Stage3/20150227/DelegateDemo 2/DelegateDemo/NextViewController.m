//
//  NextViewController.m
//  DelegateDemo
//
//  Created by qingyun on 14/12/24.
//  Copyright (c) 2014年 hnqingyun. All rights reserved.
//

#import "NextViewController.h"

@interface NextViewController ()

@end

@implementation NextViewController

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
    
    
    UILabel *myLabel = [[UILabel alloc] initWithFrame:CGRectMake(50, 100, 220, 44)];
    myLabel.textAlignment = NSTextAlignmentCenter;
    myLabel.tag = 1002;
    myLabel.text = @"my123label";
    
    UIButton *myButton = [UIButton buttonWithType:UIButtonTypeInfoDark];
    myButton.frame = CGRectMake(50, 160, 220, 44);
    
    [myButton addTarget:self action:@selector(PopPre) forControlEvents:UIControlEventTouchDown];
    
    [self.view addSubview:myButton];
    [self.view addSubview:myLabel];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)PopPre
{
    [self.navigationController popViewControllerAnimated:YES];
    UILabel *label = (UILabel *)[self.view viewWithTag:1002];
    
    NSDictionary *textDict = [[NSDictionary alloc] init];
    textDict = @{@"labeltext":label.text,@"labletext1":@"ahah"};
    
    [[NSNotificationCenter defaultCenter] postNotificationName:@"testNotify" object:textDict];
    
    
    //[self.delegate changeLabelText:label.text];
}


- (void)changeLabelText:(NSString *)text
{
    UILabel *label = (UILabel *)[self.view viewWithTag:1002];
    //label.text = @"auto";
    label.text = text;
    //label.text = @"1241414141241412xxx";
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
