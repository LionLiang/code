//
//  main.m
//  NSStringDemo
//
//  Created by qingyun on 14-10-7.
//  Copyright (c) 2014年 hnqingyun. All rights reserved.
//

#import <Foundation/Foundation.h>
#include <string.h>

int main(int argc, const char * argv[])
{

    /*--------------------字符串操作-----------------------------*/
   // NSString *string = @"Hello, world";
    //NSLog(@"%@", string);
    
    NSString *formatStr = [NSString stringWithFormat:@"I am zhang%d, I am %d years old.", 3, 18];
    NSLog(@"%@", formatStr);
    
    
/*
    
    // 通过C字符串来创建OC的字符串对象
    NSString *fromCStr = [NSString stringWithCString:"hello, world" encoding:NSUTF8StringEncoding];
    NSLog(@"fromCStr: %@", fromCStr);
    
    // 将OC的字符串对象转换成C的字符串
    const char *ptr = [fromCStr UTF8String];
    printf("====>%s\n", ptr);
    
    // ------------------- 获取字符串长度
    NSUInteger length = [formatStr length];
    NSLog(@"formatStr's length is : %lu", length);
    
    // ------------------- C语言字符串比较
    char *str = "hello,world";
    char arr[] = "Hello,World";
    
    if (strcasecmp(str, arr) == 0) {
        NSLog(@"str is equal to arr");
    } else {
        NSLog(@"they are not equal");
    }
    
    // ------------------- OC字符串对象比较
    NSString *string01 = @"String1";
    NSString *string02 = @"String";
    
    BOOL result01 = [string01 isEqualToString:string02];
    NSLog(@"result01: %d", result01);
    
    // --------------------- compare (返回三种值)
    NSComparisonResult result02 = [string01 compare:string02];
    NSLog(@"result02: %ld", result02);
    
    // --------------------- 不区分大小写比较1
    if ([string01 caseInsensitiveCompare:string02] == NSOrderedSame) {
        NSLog(@"string01 is equal to string02");
    }
    
    // --------------------- 不区分大小写比较2
    NSComparisonResult result03 = [string01 compare:string02 options:NSCaseInsensitiveSearch|NSNumericSearch];
    
    if (result03 == NSOrderedSame) {
        NSLog(@"string01 is equal to string02");
    } else if (result03 == NSOrderedAscending){
        NSLog(@"string01 is little!");
    } else {
        NSLog(@"string02 is little!");
    }
    
    // ----------------------- 改变字符串的大小写
    NSString *string03 = @"AString";
    NSString *string04 = @"String";
    
    NSLog(@"after uppercase string03: %@", [string03 uppercaseString]);
    NSLog(@"after lowercase string04: %@", [string04 lowercaseString]);
    
    // ----------------------- 字符串是否含有后缀
    NSString *fileName = @"firstChaper.txt";
    if ([fileName hasSuffix:@".txt"]) {
        NSLog(@"It's a txt file");
    }
    
    // ----------------------- 字符串是否含有前缀
    NSString *fileName2 = @"draft-hello.pages";
    if ([fileName2 hasPrefix:@"draft"]) {
        NSLog(@"It's a draft");
    }
    
    // ------------------------ 取出指定字符串中子串的范围
    NSString *string05 = @"Hello China, Hello Beijing";
    NSString *string06 = @"China";
    
    NSRange range = [string05 rangeOfString:string06];

    NSString *rangeStr = [NSString stringWithFormat:@"Location is %lu, length is %lu", range.location, range.length];
    NSLog(@"range: %@", rangeStr);
    
    // -------------------------- 提取子串
    NSString *string07 = @"This is a string";
    NSString *string08 = [string07 substringFromIndex:1];
    NSLog(@"string08: %@", string08);
    
    NSString *string09 = [string07 substringToIndex:3];
    NSLog(@"string09: %@", string09);
    
    NSString *string10 = [string07 substringWithRange:NSMakeRange(1, 6)];
    NSLog(@"string10: %@", string10);
    
    // ----------------------------  文件扩展名
    NSString *fileName3 = @"~/hello.txt";
    NSLog(@"Extention:%@", [fileName3 pathExtension]);

    // ----------------------------- 绝对路径和相对路径的转换
    NSString *path = @"~/test.mov";
    NSString *absPath = [path stringByExpandingTildeInPath];
    NSLog(@"absPath: %@", absPath);
    
    NSLog(@"path: %@", [absPath stringByAbbreviatingWithTildeInPath]);
    
    
    // ------------------------ NSMutableString -----------------------
     //1. 初始化
    NSMutableString *str11 = [NSMutableString stringWithCapacity:40];
    //NSMutableString *str12 = [NSMutableString stringWithString:string10];
    NSMutableString *str13 = [NSMutableString string];
    
    NSLog(@"str11: %@", str11);
    NSLog(@"str12: %@", str12);
    NSLog(@"str13: %@", str13);
    
    // 2. 实例方法
    [str11 appendFormat:@"who is zhang%d", 3];
    NSLog(@"str11:%@", str11);
    [str11 appendString:@", and who is lisi"];
    NSLog(@"str11:%@", str11);
    
    [str11 deleteCharactersInRange:NSMakeRange(3, 6)];
    NSLog(@"str11:%@", str11);
    */
    return 0;
}

