//
//  QYWebViewVC.m
//  UICatelog
//
//  Created by qingyun on 15-2-28.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import "QYWebViewVC.h"

@interface QYWebViewVC () <UITextFieldDelegate, UIWebViewDelegate>
@property (nonatomic, strong) UIWebView *webView;
@property (nonatomic, strong) UITextField *urlTextField;
@end

@implementation QYWebViewVC

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
    
    self.title = @"Web";
    
    [self setupSubViews];
}

- (void)setupSubViews
{
    // URL text field
    _urlTextField = [[UITextField alloc] initWithFrame:CGRectMake(20, 5, 320-2*20, 40)];
    _urlTextField.borderStyle = UITextBorderStyleRoundedRect;
    _urlTextField.placeholder = @"<请输入URL>";
    _urlTextField.text = @"http://localhost";
    
    _urlTextField.keyboardType = UIKeyboardTypeURL;
    _urlTextField.returnKeyType = UIReturnKeyGo;
    
    _urlTextField.autocorrectionType = UITextAutocorrectionTypeYes;
    _urlTextField.autocapitalizationType = UITextAutocapitalizationTypeWords;
    
    _urlTextField.delegate = self;
    
    [self.view addSubview:_urlTextField];
    
    // WebView
    _webView = [[UIWebView alloc] initWithFrame:CGRectMake(0, CGRectGetMaxY(_urlTextField.frame)+5, CGRectGetWidth(self.view.frame), CGRectGetHeight(self.view.frame))];
    
    _webView.delegate = self;
    
    [self.view addSubview:_webView];
    
    [_webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:_urlTextField.text]]];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [_urlTextField resignFirstResponder];
    [_webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:_urlTextField.text]]];
    return YES;
}

#pragma mark - webview delegate
- (void)webViewDidStartLoad:(UIWebView *)webView
{
    [UIApplication sharedApplication].networkActivityIndicatorVisible = YES;
}
- (void)webViewDidFinishLoad:(UIWebView *)webView
{
    [UIApplication sharedApplication].networkActivityIndicatorVisible = NO;
}
- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error
{
    NSString *errStr = @"<html><marquee>错误啦!</marquee></html>";
    [_webView loadHTMLString:errStr baseURL:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
