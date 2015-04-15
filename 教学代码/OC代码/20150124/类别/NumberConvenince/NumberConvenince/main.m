//
//  main.m
//  NumberConvenince
//
//  Created by qingyun on 15-1-24.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "NSString+NSNumberConvenince.h"

int main(int argc, const char * argv[])
{
    NSString *str1 = @"shitouren!";
    
    NSMutableArray *array = [NSMutableArray array];
    [array addObject:[str1 lengthAsNumber]];
    
    NSLog(@"array>>>>>>%@", array);
    
    return 0;
}

