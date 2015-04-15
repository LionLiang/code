//
//  QYStudent.h
//  EasyDelegateDemo
//
//  Created by qingyun on 15-1-26.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QYStudent : NSObject

@property (strong, nonatomic) NSString *name;
@property (nonatomic) int sleepTime;

- (void)study;

- (void)sleepFor:(NSTimeInterval)time; // 一个用来睡觉的行为，可以指定睡多久，NSTimeInterval是一个时间间隔，以秒为单位

- (void)timeCount:(NSTimer *)timer; // 该方法用来接收一个计时器来输出计时信息

@end
