//
//  SecondViewController.h
//  TransValueDemo
//
//  Created by qingyun on 15-2-26.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TransValueProtocol.h"

@interface SecondViewController : UIViewController <TransValueProtocol>

@property (copy,nonatomic) NSString *textContent;

@property (strong,nonatomic) UITextField *textB;

@property (assign,nonatomic) id<TransValueProtocol> transValueDelegate;

@end
