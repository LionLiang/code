//
//  QYPerson.h
//  CopyObjectDemo
//
//  Created by qingyun on 15-1-27.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QYPerson : NSObject <NSCopying>

@property (nonatomic,copy)NSString *name;
@property int age;

@end
