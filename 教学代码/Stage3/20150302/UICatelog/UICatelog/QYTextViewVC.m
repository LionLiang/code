//
//  QYTextViewVC.m
//  UICatelog
//
//  Created by qingyun on 15-2-28.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import "QYTextViewVC.h"

@interface QYTextViewVC () <UITextViewDelegate>

@property (nonatomic, strong) UITextView *textView;

@end

@implementation QYTextViewVC

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
    
    self.title = @"TextView";
    
    [self setupTextView];
    
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillApearAction:) name:UIKeyboardWillShowNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillDisapearAction:) name:UIKeyboardWillHideNotification object:nil];
}

- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
    [[NSNotificationCenter defaultCenter] removeObserver:self name:UIKeyboardWillShowNotification object:nil];
    [[NSNotificationCenter defaultCenter] removeObserver:self name:UIKeyboardWillHideNotification object:nil];
}

- (void)keyboardWillApearAction:(NSNotification *)notification
{
    NSDictionary *userinfo = notification.userInfo;
    
    CGRect keyboardFrame = [userinfo[UIKeyboardFrameEndUserInfoKey] CGRectValue];
    
    double duration = [userinfo[UIKeyboardAnimationDurationUserInfoKey] doubleValue];
    
    CGRect frame = self.textView.frame;
    
    frame.size.height -= CGRectGetHeight(keyboardFrame);
    
    // 动画设置textView的frame
    
    [UIView animateWithDuration:duration animations:^{
        self.textView.frame = frame;
    }];
}

- (void)keyboardWillDisapearAction:(NSNotification *)notification
{
    NSDictionary *userinfo = notification.userInfo;
    
    CGRect keyboardFrame = [userinfo[UIKeyboardFrameEndUserInfoKey] CGRectValue];
    
    double duration = [userinfo[UIKeyboardAnimationDurationUserInfoKey] doubleValue];
    
    CGRect frame = self.textView.frame;
    
    frame.size.height += CGRectGetHeight(keyboardFrame);
    
    // 动画设置textView的frame
    
    [UIView animateWithDuration:duration animations:^{ //Block块设置动画
        self.textView.frame = frame;
    }];
}

- (void)setupTextView
{
    _textView = [[UITextView alloc] initWithFrame:self.view.frame];
    
    NSString *text = @"Now is the time for all the good developers to come to serve their country.\n\nNow is the time for all the good developers to come to serve their country.\n\nThis text view can also use attributed strings.";
    
    _textView.text = text;
//    _textView.attributedText =
    
    _textView.delegate = self;
    
    _textView.scrollEnabled = YES;
    
    _textView.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
    
    [self.view addSubview:_textView];
    
}

- (void)textViewDidBeginEditing:(UITextView *)textView
{
    UIBarButtonItem *saveItem = [[UIBarButtonItem alloc] initWithTitle:@"Done" style:UIBarButtonItemStyleDone target:self action:@selector(saveAction:)];
    
    self.navigationItem.rightBarButtonItem = saveItem;
}

- (void)saveAction:(UIBarButtonItem *)sender
{
    [_textView resignFirstResponder];
    self.navigationItem.rightBarButtonItem = nil;
}

@end
