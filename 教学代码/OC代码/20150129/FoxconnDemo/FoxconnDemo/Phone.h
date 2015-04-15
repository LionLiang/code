//
//  Phone.h
//  FoxconnDemo
//
//  Created by qingyun on 15-1-26.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Cpu;

@interface Phone : NSObject

@property (strong,nonatomic) Cpu *cpu;
@property (nonatomic) int memory;
@property (nonatomic) float screen;
@property (nonatomic, getter = hasHeaSet) BOOL headSet;

@end
