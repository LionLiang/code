//
//  QYViewController.h
//  DelegateDemo
//
//  Created by qingyun on 14/12/24.
//  Copyright (c) 2014年 hnqingyun. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ChangeValue.h"

@interface QYViewController : UIViewController <ChangeValue>

@property (nonatomic,strong) id<ChangeValue> delegate;

@end
