//
//  EasyPerson.m
//  BreakPrisonDemo
//
//  Created by qingyun on 15-1-24.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import "EasyPerson.h"


// 使用类别对类的扩展
@interface EasyPerson()

- (void)eat;

@property (strong,readwrite) NSString *school; // 使用类别更该属性的只读属性

@property (assign) int sex; // 扩展出的新的属性，但是只能在该类的.m文件中使用，是私有属性

@end
// 使用类别对类的扩展


@implementation EasyPerson

- (id)init
{
    if (self = [super init]) {
        _name = @"zhansan";
        _identify = @"410xxxxxxxxxxxxx";
        _age = 18;
        _sex = 0;
        
    }
    return self;
}

- (void)askName
{

    NSLog(@"my name is %@, i'm a bueaty %d!", _name, _sex);
    [self eat];
}


- (void)askIdentify
{
    NSLog(@"my identify is %@ school is %@", _identify,_school);
}

- (void)eat
{
    NSLog(@"I'm a chihuo!");
}

@end
