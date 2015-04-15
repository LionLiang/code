//
//  QYPerson.h
//  PropertyDemo
//
//  Created by qingyun on 15-1-24.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QYPerson : NSObject

{
    NSString *_identify;
}

@property (strong, nonatomic) NSString *name;
@property (strong, readonly) NSString *identify;
@property int age;
@property (getter = isMarried) BOOL Married;


@end
 