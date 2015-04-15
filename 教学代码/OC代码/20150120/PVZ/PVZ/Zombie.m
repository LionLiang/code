//
//  Zombie.m
//  PVZ
//
//  Created by qingyun on 15/1/19.
//  Copyright (c) 2015年 Poppei. All rights reserved.
//

#import "Zombie.h"

@implementation Zombie
- (void)setEquip:(ZombieEquip *)equip
{
    _equip = equip;
}

- (ZombieEquip *)equip
{
    return _equip;
}
@end
