//
//  QYViewController.m
//  DelegateDemo
//
//  Created by qingyun on 14/12/24.
//  Copyright (c) 2014年 hnqingyun. All rights reserved.
//

#import "QYViewController.h"
#import "NextViewController.h"

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
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UILabel *myLabel = [[UITextField alloc] initWithFrame:CGRectMake(50, 100, 220, 44)];
    myLabel.textAlignment = NSTextAlignmentCenter;
    myLabel.text = @"2312313131321";
    myLabel.tag = 1001;
    
    
    UIButton *myButton = [UIButton buttonWithType:UIButtonTypeContactAdd];
    myButton.frame = CGRectMake(50, 160, 220, 44);
    
    [myButton addTarget:self action:@selector(PushNext) forControlEvents:UIControlEventTouchDown];
    
    [self.view addSubview:myButton];
    [self.view addSubview:myLabel];
    
    
    UITextField *text = [[UITextField alloc] initWithFrame:CGRectMake(50, 200, 220, 44)];
    text.borderStyle = UITextBorderStyleBezel;
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(changeNotify:) name:@"testNotify" object:nil];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(sestemEvent:) name:UIKeyboardDidShowNotification object:nil];
    [self.view addSubview:text];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)PushNext
{
    NextViewController *nextVc = [[NextViewController alloc] init];
    nextVc.delegate = self;
    self.delegate = nextVc;
    UILabel *label = (UILabel *)[self.view viewWithTag:1001];
    [self.delegate changeLabelText:label.text];
    [self.navigationController pushViewController:nextVc animated:YES];
}

- (void)changeLabelText:(NSString *)text
{
    UILabel *label = (UILabel *)[self.view viewWithTag:1001];
    label.text = text;
}

- (void)changeNotify:(NSNotification *)sender
{
    NSDictionary *dict = sender.object;
    UILabel *label = (UILabel *)[self.view viewWithTag:1001];
    label.text = dict[@"labletext1"];
}

- (void)sestemEvent:(NSNotification *)sender
{
    NSLog(@"keyborad");
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
