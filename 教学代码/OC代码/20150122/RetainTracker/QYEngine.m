//
//  QYEngine.m
//  RetainTracker
//
//  Created by qingyun on 15-1-22.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import "QYEngine.h"

@implementation QYEngine

- (void)setName:(NSString *)name
{
    _name = name;
}

- (NSString *)name
{
    return _name;
}


- (void)dealloc
{
    NSLog(@"enginde %@ is dead!", [self name]);
    [super dealloc];
}


@end
