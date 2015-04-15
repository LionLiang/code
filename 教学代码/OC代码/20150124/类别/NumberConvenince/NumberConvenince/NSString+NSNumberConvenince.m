//
//  NSString+NSNumberConvenince.m
//  NumberConvenince
//
//  Created by qingyun on 15-1-24.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import "NSString+NSNumberConvenince.h"

@implementation NSString (NSNumberConvenince)

- (NSNumber *)lengthAsNumber
{
    NSNumber *length = [NSNumber numberWithUnsignedLong:[self length]];
    return length;
}

@end
