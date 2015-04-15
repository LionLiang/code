//
//  Plant.h
//  PVZ
//
//  Created by qingyun on 15/1/19.
//  Copyright (c) 2015年 Poppei. All rights reserved.
//

#import "PVZObjects.h"

@class PlantShell;
@class Zombie;

@interface Plant : PVZObjects
{
    PlantShell *_shell;
}
- (void)setShell:(PlantShell *)shell;
- (PlantShell *)shell;

- (int)power;

- (Zombie *)attack:(Zombie *)zombie;
@end
