//
//  EasyPerson.h
//  BreakPrisonDemo
//
//  Created by qingyun on 15-1-24.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface EasyPerson : NSObject

@property (copy) NSString *name;

@property (strong) NSString *identify;

@property (assign) int age;

@property (strong,readonly) NSString *school;

- (void)askName;


@end
