//
//  QYBoss.h
//  ProtocolDemo
//
//  Created by qingyun on 15-1-26.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "SecrectrayProtocol.h"

@class QYSecretary;

@interface QYBoss : NSObject

@property (nonatomic, strong) QYSecretary <SecrectrayProtocol> *secretary; //代表该属性将来必须有遵循过SecrectrayProtocol的类的对象来赋值


- (void)makeMoney;

@end
