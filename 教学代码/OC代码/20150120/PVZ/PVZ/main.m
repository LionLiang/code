//
//  main.m
//  PVZ
//
//  Created by qingyun on 15/1/19.
//  Copyright (c) 2015年 Poppei. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "PVZObjects.h"
#import "Plant.h"
#import "PlantShell.h"
#import "Zombie.h"
#import "ZombieEquip.h"

int main(int argc, const char * argv[])
{
    Plant *pea = [Plant new];
    [pea setLife:50];
    [pea setName:@"豌豆射手"];
    PlantShell *peaShell = [PlantShell new];
    [peaShell setPower:80];
    [pea setShell:peaShell];
    
    Zombie *noramlZombie = [Zombie new];
    [noramlZombie setLife:50];
    [noramlZombie setName:@"普通僵尸"];
    ZombieEquip *equip = [ZombieEquip new];
    [equip setDefense:20];
    [noramlZombie setEquip:equip];
    
    noramlZombie = [pea attack:noramlZombie];
    int count = 1;
    while ([noramlZombie life] != 0) {
        count++;
        noramlZombie = [pea attack:noramlZombie];
    }
    
    if ([noramlZombie isDead]) {
        NSLog(@"%@ 承受了 %@ %d次攻击, 已经被干掉", noramlZombie, pea, count);
    } else {
        NSLog(@"%@ 承受了 %@ %d次攻击，还剩%d生命", noramlZombie, pea, count, [noramlZombie life]);
    }
    
    
    
    return 0;
}

