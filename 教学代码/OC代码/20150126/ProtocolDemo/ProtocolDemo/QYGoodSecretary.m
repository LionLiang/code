//
//  QYGoodSecretary.m
//  ProtocolDemo
//
//  Created by qingyun on 15-1-26.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import "QYGoodSecretary.h"

@implementation QYGoodSecretary

#pragma mark - QYSecretray protocol required

- (id)init
{
    if (self = [super init]) {
        _name = @" I am GoodSecretary";
    }
    return self;
}

- (void)takeTea
{
    NSLog(@"喝什么？");
}

- (void)phoneCall:(NSString *)message
{
    NSLog(@"%@>>>>>>>", message);
}

#pragma mark - QYSecretary protocol optional
- (void)goShopping
{
    NSLog(@"我是高级秘书，当然可以!");
}

@end
