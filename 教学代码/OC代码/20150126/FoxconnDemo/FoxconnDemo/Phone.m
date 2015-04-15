//
//  Phone.m
//  FoxconnDemo
//
//  Created by qingyun on 15-1-26.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import "Phone.h"
#import "Cpu.h"

@implementation Phone

- (id)init
{
    if (self = [super init]) {
        _cpu = [[Cpu alloc] init];
        _cpu.rate = 1.5;
        _memory = 1;
        _screen = 5.5;
        _headSet = YES;
    }
    return self;
}

@end
