//
//  Foxconn.m
//  FoxconnDemo
//
//  Created by qingyun on 15-1-26.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import "Foxconn.h"

#import "Phone.h"
#import "Computer.h"


@implementation Foxconn

- (id)init
{
    return [self initWithApple]; // 启用apple的生产线
    
}

- (id)initWithApple
{
   
    Phone *iPhone = [[Phone alloc] init];
    
    Computer *iMac = [[Computer alloc] init];
    //computer 自己写
    return [self initWithPhone:iPhone andComputer:iMac];
}


- (id)initWithMircosoft
{
    return self;

}

- (id)initWithPhone:(Phone *)phone andComputer:(Computer *)computer
{
    if (self = [super init]) {
        _phone = phone;
        _computer = computer;
    }
    return self;

}
@end
