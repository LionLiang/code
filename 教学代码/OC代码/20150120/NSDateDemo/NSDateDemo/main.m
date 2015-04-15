//
//  main.m
//  NSDateDemo
//
//  Created by qingyun on 15/1/20.
//  Copyright (c) 2015年 Poppei. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    // 当前时间创建NSDate
    
    NSDate *myDate = [NSDate date];
    
    NSLog(@"myDate = %@",myDate);
    
    //从现在开始的24小时
    
    NSTimeInterval secondsPerDay = 24*60*60;
    
    NSDate *tomorrow = [NSDate dateWithTimeIntervalSinceNow:secondsPerDay]; // NSDate的类方法
    
    NSLog(@"myDate = %@",tomorrow);
    
    //根据已有日期创建日期
    
    NSTimeInterval secondsPerDay1 = 24*60*60;
    
    NSDate *now = [NSDate date];
    
    NSDate *yesterDay = [now dateByAddingTimeInterval:-secondsPerDay1]; // NSDate的对象方法
    
    NSLog(@"yesterDay = %@",yesterDay);
    
    
    
    //比较日期
    
    BOOL sameDate = [now isEqualToDate:yesterDay];
    
    NSLog(@"sameDate = %hhd",sameDate);
    
    //获取较早的日期
    
    NSDate *earlierDate = [yesterDay earlierDate:now];
    
    NSLog(@"earlierDate  = %@",earlierDate);
    
    //较晚的日期
    
    NSDate *laterDate = [yesterDay laterDate:now];
    
    NSLog(@"laterDate  = %@",laterDate);
    
    
    
    //两个日期之间相隔多少秒
    
    NSTimeInterval secondsBetweenDates= [yesterDay timeIntervalSinceDate:now];
    
    NSLog(@"secondsBetweenDates=  %lf",secondsBetweenDates);
    
    // 转换
    NSDateFormatter* dateFormat = [[NSDateFormatter alloc] init];//实例化一个NSDateFormatter对象
    [dateFormat setDateFormat:@"yyyy-MM-dd hh:mm:ss"];//设定时间格式,要注意跟下面的dateString匹配，否则日起将无效
    NSDate *date1 =[dateFormat dateFromString:@"2013-3-11 15:56:01"];
    
    
    
    NSLog(@"》》》》》》》%@",date1);
    
    
    
    [dateFormat setDateFormat:@"yy-MM-dd HH:mm"];//设定时间格式
    
    NSString *dateString = [dateFormat stringFromDate:[NSDate date]]; //求出当天的时间字符串，当更改时间格式时，时间字符串也能随之改变
    
    NSLog(@"%@",dateString);
    
    
    
    return 0;

}

