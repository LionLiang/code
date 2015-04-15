//
//  QYNormalSerectary.m
//  ProtocolDemo
//
//  Created by qingyun on 15-1-26.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import "QYNormalSerectary.h"

@implementation QYNormalSerectary

#pragma mark - QYSecretray protocol
- (id)init
{
    if (self = [super init]) {
        _name = @" I am NormalSecretary";
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


@end
