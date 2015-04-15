//
//  main.m
//  EasyDelegateDemo
//
//  Created by qingyun on 15-1-26.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "QYStudent.h"
#import "QYTeacher.h"

/*
 * 使用非正式协议实现老师叫醒学生
 * 从类的设计角度来说，叫醒这个行为并不是老师类的特有行为
 * 所以只是使用非正式协议来简单实现，并且在此过程中，学生睡觉不能自己叫醒自己，那么这个实现就是一个委托或者叫代理（delegate）
 * 代理是iOS开发中一种很重要的实现方式，所以需要理解代理的设计方法
 */

int main(int argc, const char * argv[])
{
    QYStudent *student = [[QYStudent alloc] init];
    
    student.name = @"kobe";
    
    [student study];
    
    [student sleepFor:10]; // 学生睡觉，在调用睡觉方法是传入睡觉时间，同时通知老师
    
    /*
     * 关于定时器的这种用法
     * scheduledTimerWithTimeInterval接收的参数表示定时器的时间间隔
     * target接收的参数代表将来执行相应操作的对象
     * selector接收的参数表示将来要执行的操作
     * uiserInfo接收的参数表示在该方法中需要传递的其他对象
     * repeats的参数表示此定时去是否重复执行
     * selector:@selector(timeCount:)这个方法参数后面的冒号表示必须有参数，而这里的参数就是指该计时器本身
     */
    
    [NSTimer scheduledTimerWithTimeInterval:1 target:student selector:@selector(timeCount:) userInfo:nil repeats:YES];
    
    // 在命令行模式下计时器需要启动主运行环才能生效，所以下面一行的代码就开启主运行环
    [[NSRunLoop currentRunLoop] run];
    
    return 0;
}

