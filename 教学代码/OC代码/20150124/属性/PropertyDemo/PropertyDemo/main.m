//
//  main.m
//  PropertyDemo
//
//  Created by qingyun on 15-1-24.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "QYPerson.h"

int main(int argc, const char * argv[])
{
    
    QYPerson *zhangSan = [[QYPerson alloc] init];
    
    //[zhangSan setName:@"zhangsan"];
    [zhangSan setAge:18];
    
    //NSLog(@"zhangsan'name>>>>>%@", zhangSan.nickName);// [zhangeSan name];
    
    //zhangSan.name = name; // 以赋值关系来区分，在等号右边代表getter，左边代表setter
    
    // 一旦属性也成readONLY的时候，属性的set方法不会被生成，当然也不能调用，即使.语法的set用法也不能使用
    //[zhangSan setIdentify:@"4103234affawefwaf"];
    //zhangSan.identify = @"410xzxxxxxxxx"; // [zhangSan setName];
    
    NSLog(@"zhangsan>>>>>>%@", zhangSan);
    NSLog(@"zhangsan id>>>>>>%@", zhangSan.identify); // 这个时候 .语法是get的用法，可以使用
    
    NSLog(@"婚否？%d", [zhangSan isMarried]);
    
    NSLog(@"身份证告诉我:%@", zhangSan.identify);
    
    return 0;
}

