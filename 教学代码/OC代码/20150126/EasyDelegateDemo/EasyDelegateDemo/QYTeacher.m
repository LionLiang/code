//
//  QYTeacher.m
//  EasyDelegateDemo
//
//  Created by qingyun on 15-1-26.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import "QYTeacher.h"

#import "NSObject+WakeUp.h"
#import "QYStudent.h"

@implementation QYTeacher

// 老师接收到学生的消息，并且设定定时器去叫醒学生
- (void)listenStudent:(QYStudent *)student
{
    // SEL可以视为声明方法作为参数传递的类型
    // 方法后有冒号和没有冒号完全是两个概念，有冒号表示有参数
    SEL method = @selector(wakeUp:);
    
    if ([self respondsToSelector:method]) {
        [NSTimer scheduledTimerWithTimeInterval:student.sleepTime target:self selector:method userInfo:student repeats:NO];
    }
}

@end
