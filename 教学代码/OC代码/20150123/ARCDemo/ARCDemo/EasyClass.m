//
//  EasyClass.m
//  ARCDemo
//
//  Created by qingyun on 15-1-23.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import "EasyClass.h"

@implementation EasyClass

- (void)setObj:(id)obj
{
    _obj = obj;
}

- (NSString *)description
{
    NSString *desc = [[NSString alloc] initWithFormat:@"abab%d",1];
    return desc;
}
@end
