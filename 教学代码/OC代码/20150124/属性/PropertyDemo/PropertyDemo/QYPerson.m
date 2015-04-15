//
//  QYPerson.m
//  PropertyDemo
//
//  Created by qingyun on 15-1-24.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import "QYPerson.h"


@implementation QYPerson

@synthesize name = nickName;
//@synthesize identify = _identify;
@dynamic identify;

- (id)init
{
    if (self = [super init]) {
        nickName = @"qin";
        _identify = @"410324xxxxxxx";
        _Married = NO;
    }
    return self;
}


- (NSString *)description
{
    NSString *desc = [NSString stringWithFormat:@"my name:%@, identify:%@, age:%d",nickName,_identify,_age];

    return desc;
}

- (NSString *)identify
{
    return @"this is secrect";
}

@end
