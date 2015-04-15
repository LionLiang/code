//
//  QYStudent.m
//  EasyDelegateDemo
//
//  Created by qingyun on 15-1-26.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import "QYStudent.h"

#import "QYTeacher.h"

@implementation QYStudent

- (void)study
{
    NSLog(@"我已经开始学习...");
}

// 睡觉行为，并且在睡觉时通知老师
- (void)sleepFor:(NSTimeInterval)time
{
    NSLog(@"我累了，要睡一会，请在10小时后叫醒我！");
    _sleepTime = time;
    
    QYTeacher *teacher = [[QYTeacher alloc] init];
    [teacher listenStudent:self]; // 老师接收到学生睡觉消息
}

// 计时输出
- (void)timeCount:(NSTimer *)timer
{
    if (_sleepTime > 0) {
        _sleepTime--;
        NSLog(@"还能睡%d几个小时，做个好梦。。。", _sleepTime);
        if (_sleepTime == 1) {
            NSLog(@"时间到！");
            [timer invalidate];
        }
    }
}
@end
