//
//  NextViewController.h
//  DelegateDemo
//
//  Created by qingyun on 14/12/24.
//  Copyright (c) 2014年 hnqingyun. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ChangeValue.h"

@interface NextViewController : UIViewController <ChangeValue>

@property (nonatomic,assign) id<ChangeValue> delegate;

@end
