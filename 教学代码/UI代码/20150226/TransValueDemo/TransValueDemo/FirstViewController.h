//
//  FirstViewController.h
//  TransValueDemo
//
//  Created by qingyun on 15-2-26.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TransValueProtocol.h"

@interface FirstViewController : UIViewController <TransValueProtocol>

@property (strong,nonatomic) UITextField *textA;

@property (strong,nonatomic) id<TransValueProtocol> transValueDelegate;

@end
