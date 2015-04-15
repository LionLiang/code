//
//  main.m
//  RetainTracker
//
//  Created by qingyun on 15-1-22.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "QYCar.h"
#import "QYEngine.h"

int main(int argc, const char * argv[])
{
    //QYCar *car = [QYCar new]; // 使用new，alloc或者copy的时候，对象的引用计数自动设置为1
    QYCar *car = [[QYCar alloc] init];
    NSLog(@"car retaincount>>>>>>%lu", [car retainCount]);
    
    QYEngine *newEngine = [QYEngine new];
    [newEngine setName:@"new"];
    NSLog(@"newEngine retaincount>>>>>>%lu", [newEngine retainCount]);
    
    [car setEngine:newEngine];
    NSLog(@"newEngine retaincount>>>>>>%lu", [newEngine retainCount]);

    [car release];
    [newEngine release];
    
    return 0;
}

