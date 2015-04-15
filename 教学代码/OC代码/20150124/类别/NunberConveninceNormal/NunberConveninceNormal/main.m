//
//  main.m
//  NunberConveninceNormal
//
//  Created by qingyun on 15-1-24.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    NSString *str1 = [NSString stringWithFormat:@"I'm %d years old.", 18];
    NSString *str2 = @"I'm lilei.";
    
    NSUInteger str1Length = [str1 length];
    NSUInteger str2Length = [str2 length];
    
    NSNumber *number1 = [NSNumber numberWithUnsignedLong:str1Length];
    NSNumber *number2 = [NSNumber numberWithUnsignedLong:str2Length];
    
    
    NSMutableArray *array = [NSMutableArray array];
    //[array addObject:str1Length];
    [array addObject:number1];
    [array addObject:number2];
    
    NSLog(@"array>>>>>>%@", array);
    
    return 0;
}

