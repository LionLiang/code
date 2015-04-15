//
//  main.m
//  NSValue&NSNull
//
//  Created by qingyun on 15/1/20.
//  Copyright (c) 2015年 Poppei. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    /*------------------NSNumber-------------------*/
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    
    // 装箱
    // 1.
    NSNumber *number = [NSNumber numberWithChar:'X'];
    [dict setObject:number forKey:@"char"];
    number = [NSNumber numberWithInt:2046];
    [dict setObject:number forKey:@"int"];
    
    NSLog(@"dict:%@", dict);
    // 2. 新语法
    number = @123.45;
    [dict setObject:number forKey:@"float"];
    number = @YES;
    [dict setObject:number forKey:@"bool"];
    NSLog(@"dict: %@", dict);
    
    // 开箱
    number = dict[@"char"];
    char c = [number charValue];
    NSLog(@"============%c============", c);
    
    number = dict[@"int"];
    int d = [number intValue];
    NSLog(@"============%d============", d);
    
    number = dict[@"float"];
    float f = [number floatValue];
    NSLog(@"============%.2f============", f);
    
    number = dict[@"bool"];
    BOOL b = [number boolValue];
    NSLog(@"============%d============", b);
    
    /*------------------NSValue-------------------*/
    // 创建NSValue对象 并放到字典里
    NSRect rect = NSMakeRect(90, 100, 200, 100);
    // valueWithBytes后面的参数是当前需要装箱的基本数据类型变量取地址
    // objCType后面的参数是通过@encode转换过的数据类型名字的字符串，写法就是@encode(当前需要装箱的数据类型名称)
    NSValue *value = [NSValue valueWithBytes:&rect objCType:@encode(NSRect)];
    
    
//    int a = 100;
//    NSValue *valueInt = [NSValue valueWithBytes:&a objCType:@encode(int)];
//    NSNumber *intNumber = (NSNumber *)valueInt;
//    int bb = [intNumber intValue];
    
    [dict setObject:value forKey:@"rect"];
    
    // 从字典里取出NSValue对象，并开箱
    NSValue *anotherValue = dict[@"rect"];
    NSRect anotherRect = {0};
    [anotherValue getValue:&anotherRect]; // 注意：这里执行开箱方法，getValue后面的参数代表你将要把开箱过的数据存放在哪个变量里，就把这个变量的地址传过来，最终执行过之后，该变量地址自动存储这个开箱过的数据，这就是一个出参的典型场合
    NSLog(@"anotherRect is (%f, %f, %f, %f)", anotherRect.origin.x
          , anotherRect.origin.y, anotherRect.size.width, anotherRect.size.height);
    
    // cocoa提供了部分struct与NSValue互相转换的快捷方式
    rect.origin.x = 10;
    rect.origin.y = 20;
    rect.size.width = 88;
    rect.size.height = 99;
    
    value = [NSValue valueWithRect:rect];
    [dict setObject:value forKey:@"newRect"];
    
    anotherValue = dict[@"newRect"];
    anotherRect = [anotherValue rectValue];
    NSLog(@"-->anotherRect is (%f, %f, %f, %f)", anotherRect.origin.x
          , anotherRect.origin.y, anotherRect.size.width, anotherRect.size.height);
    
    
    /*------------------NSNull-------------------*/
    [dict setObject:[NSNull null] forKey:@"Utopia"];
    NSLog(@"dict: %@", dict);
    
    if (dict[@"Utopia"] == [NSNull null]) {
        NSLog(@"What a pity! Utopia does not exist!");
    }
    
    void *p = (__bridge void *)([NSNull null]);
    NSLog(@"p:%p", p);
    
    p = (__bridge void *)([NSNull null]);
    NSLog(@"p:%p", p);
    
    p = (__bridge void *)([NSNull null]);
    NSLog(@"p:%p", p);
    return 0;
}

