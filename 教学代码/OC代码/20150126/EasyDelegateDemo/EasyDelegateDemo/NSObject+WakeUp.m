//
//  NSObject+WakeUp.m
//  EasyDelegateDemo
//
//  Created by qingyun on 15-1-26.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import "NSObject+WakeUp.h"

#import "QYStudent.h"

@implementation NSObject (WakeUp)

// 该方法同样接收一个计时器，可以将计时器中传递的操作对象接收并进行操作
- (void)wakeUp:(NSTimer *)timer
{
    QYStudent *student = timer.userInfo;
    NSLog(@"%@，我是钦佩老师，醒醒，该上课了！", student.name);
}

@end
