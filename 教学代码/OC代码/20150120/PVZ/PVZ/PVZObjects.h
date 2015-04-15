//
//  PVZObjects.h
//  PVZ
//
//  Created by qingyun on 15/1/19.
//  Copyright (c) 2015年 Poppei. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PVZObjects : NSObject
{
    NSString *_name;
    int _life;
}

- (void)setName:(NSString *)name;
- (NSString *)name;

- (void)setLife:(int)life;
- (int)life;

- (BOOL)isDead;
@end
