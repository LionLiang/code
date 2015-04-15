//
//  ZombieEquip.m
//  PVZ
//
//  Created by qingyun on 15/1/19.
//  Copyright (c) 2015年 Poppei. All rights reserved.
//

#import "ZombieEquip.h"

@implementation ZombieEquip
- (void)setName:(NSString *)name
{
    _name = name;
}

- (NSString *)name
{
    return _name;
}

- (void)setDefense:(int)defense
{
    _defense = defense;
}

- (int)defense
{
    return _defense;
}
@end
