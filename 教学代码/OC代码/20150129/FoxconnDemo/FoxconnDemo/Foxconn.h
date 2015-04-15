//
//  Foxconn.h
//  FoxconnDemo
//
//  Created by qingyun on 15-1-26.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Phone;
@class Computer;

@interface Foxconn : NSObject

@property (strong,nonatomic) Phone *phone;
@property (strong,nonatomic) Computer *computer;

- (id)initWithApple;

- (id)initWithMircosoft;

- (id)initWithPhone:(Phone *)phone andComputer:(Computer *)computer;

@end
