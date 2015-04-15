//
//  Zombie.h
//  PVZ
//
//  Created by qingyun on 15/1/19.
//  Copyright (c) 2015年 Poppei. All rights reserved.
//

#import "PVZObjects.h"

@class ZombieEquip;

@interface Zombie : PVZObjects
{
    ZombieEquip *_equip;
}

- (void)setEquip:(ZombieEquip *)equip;
- (ZombieEquip *)equip;

@end
