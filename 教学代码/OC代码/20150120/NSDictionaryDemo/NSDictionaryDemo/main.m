//
//  main.m
//  NSDictionaryDemo
//
//  Created by qingyun on 14-10-9.
//  Copyright (c) 2014年 hnqingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    /*------------------创建NSDictionary对象-------------------*/
    NSObject *p1 = [NSObject new];
    NSObject *p2 = [NSObject new];
    NSObject *p3 = [NSObject new];
    NSObject *p4 = [NSObject new];
    
    //    NSObject *obj = [NSObject new];
    
     //dictionaryWithObjectsAndKeys
    //NSDictionary *persons = [NSDictionary dictionaryWithObjectsAndKeys:p1, @"zs", p2, @"ls", p3, @"ww", p4, @"zl", /*obj, @"obj",*/ nil];
    
    // 2. 推荐的新语法{}
    NSDictionary *persons = @{@"zs":p1, @"ls":p2, @"ww":p3, @"zl":p4};
    
    NSLog(@"persons: %@", persons);
    
    
    /*------------------根据key来获取字典中相应的对象-------------------*/
    // 1. objectForKey
    //    QYPerson *somePerson = [persons objectForKey:@"ls"];
    
    // 2. 新语法
    NSObject *obj = persons[@"ls"];
    
    NSLog(@"lisi: %@", obj);
    
    NSArray *allKeys = [persons allKeys]; //  提取出字典中所有Key放入一个新的数组中
    NSLog(@"allKeys: %@", allKeys);
    
    /*------------------创建可变字典-------------------*/
    NSMutableDictionary *persons2 = [NSMutableDictionary dictionary];
    
    // 通过其他的字典来给字典添加元素
    [persons2 addEntriesFromDictionary:persons];
    NSLog(@"persons2:%@", persons2);
    
    /*------------------向可变字典添加对象-------------------*/
    NSObject *p5 = [NSObject new];
    [persons2 setObject:p5 forKey:@"tq"];
    
    NSLog(@"persons2: %@", persons2);
    
    NSObject *p6 = [NSObject new];
    [persons2 setObject:p6 forKey:@"tq"]; // 如果对已经存在键赋值的话，会覆盖掉原来的value
    NSLog(@">>>persons2: %@", persons2);
    
    /*------------------从向可变字典移除对象-------------------*/
    [persons2 removeObjectForKey:@"tq"];
    NSLog(@"remove:%@", persons2);
    
    
    return 0;
}

