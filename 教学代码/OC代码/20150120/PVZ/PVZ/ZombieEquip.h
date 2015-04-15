//
//  ZombieEquip.h
//  PVZ
//
//  Created by qingyun on 15/1/19.
//  Copyright (c) 2015年 Poppei. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ZombieEquip : NSObject
{
    NSString *_name;
    int _defense;
}

- (void)setName:(NSString *)name;
- (NSString *)name;

- (void)setDefense:(int)defense;
- (int)defense;
@end
