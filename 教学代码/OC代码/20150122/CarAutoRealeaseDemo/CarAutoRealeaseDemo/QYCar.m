//
//  QYCar.m
//  CarAutoRealeaseDemo
//
//  Created by qingyun on 15-1-22.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import "QYCar.h"

#import "QYEngine.h"

@implementation QYCar

- (QYEngine *)returnEngine
{
    QYEngine *newEngine = [QYEngine new]; //1
    
    return [newEngine autorelease];
    
}

- (void)dealloc
{
    NSLog(@"car is dead!");
    [super dealloc];
}
@end
