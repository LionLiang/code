//
//  QYViewController.m
//  UITextfiledDemo
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
    
    UITextField *myText =  [[UITextField alloc] initWithFrame:CGRectMake(50, 50, 220, 60)];
    
    // 与文本相关的属性
    myText.borderStyle = UITextBorderStyleLine;
    myText.textColor = [UIColor purpleColor];
    myText.placeholder = @"请输入5个数"; //textColor并不影响placeholder的颜色
    //myText.font = [UIFont boldSystemFontOfSize:40];
    myText.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter; // 垂直方向上内容布置方式
    myText.adjustsFontSizeToFitWidth = YES;
    myText.minimumFontSize = 20; // adjustsFontSizeToFitWidth开启时可以适应的最小字体
    //myText.secureTextEntry = YES;
    
    // 与编辑相关的属性
    myText.autocapitalizationType = UITextAutocapitalizationTypeSentences; // 设置首字母是否大写，其类型的自己测试
    //myText.autocorrectionType = UITextAutocorrectionTypeDefault; // 检查拼写是否错误
    myText.spellCheckingType = UITextSpellCheckingTypeDefault; // 拼写关联，自动补全单词，需要myText.autocorrectionType设置成UITextAutocorrectionTypeDefault
    
    myText.keyboardType = UIKeyboardTypeEmailAddress; // 键盘类型，例子里是一个电话的键盘
    
    myText.keyboardAppearance = UIKeyboardAppearanceDark; // 键盘的外观风格
    
    myText.returnKeyType = UIReturnKeyGo; // 回车键或者返回键的样式
    myText.enablesReturnKeyAutomatically = YES; // 当文本内容为空的时候禁用returnkey
    myText.clearsOnBeginEditing = YES; // 当文本获取第一响应者的时候自动清空原来的输入内容
    myText.clearButtonMode = UITextFieldViewModeAlways; // 清空文本内容
    
    [self.view addSubview:myText];
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
