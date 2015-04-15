//
//  NSObject+WakeUp.h
//  EasyDelegateDemo
//
//  Created by qingyun on 15-1-26.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import <Foundation/Foundation.h>

// 该类别就作为老师叫醒学生的非正式协议，如果老师想拥有叫醒学生的功能，就必须引入此类别
@interface NSObject (WakeUp)

- (void)wakeUp:(NSTimer *)timer;

@end
