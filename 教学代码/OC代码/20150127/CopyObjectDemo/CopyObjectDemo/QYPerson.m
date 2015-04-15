//
//  QYPerson.m
//  CopyObjectDemo
//
//  Created by qingyun on 15-1-27.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import "QYPerson.h"

@implementation QYPerson

- (id)init
{
    if (self = [super init]) {
        _name = @"zhangxu";
        _age = 18;
    }
    return self;
}

- (id)copyWithZone:(NSZone *)zone
{
    QYPerson *copyPerson;
    
    // 这个写法是硬编码，在继承的时候会出问题
    // copyPerson = [[QYPerson alloc] init];
    
    // 如果是实现继承copy的话，需要先调用[super copyWithZone:zone] ******
    // 这个时候上面这个写法就是一个错误的硬编码了，需要用[self class]来获取真正需要分配空间的那个类
    copyPerson = [[[self class] allocWithZone:zone] init];
    
    
    copyPerson.name = self.name;
    copyPerson.age = self.age;
    return copyPerson;
}

@end
