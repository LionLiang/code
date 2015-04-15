//
//  main.m
//  CopyObjectDemo
//
//  Created by qingyun on 15-1-27.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "QYPerson.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
     
        QYPerson *person = [[QYPerson alloc] init];
        
        // 1.这种做法跟发送copy消息的原理是一样的，只不过是一次性的
        //QYPerson *copyPerson = [[QYPerson alloc] init];
        //copyPerson.name = person.name;
        //copyPerson.age = person.age;
        
        // 2.这个做法就是让copyPerson直接指向person，这么做直接把对象A给遗忘了，就没有使用，是对内存的浪费
        //QYPerson *copyPerson = [[QYPerson alloc] init]; // 对象A
        //copyPerson = person;
        
         
        
        // 3.copy的真正做法
        QYPerson *copyPerson = [person copy];
        
        NSLog(@"Person>>>>>>>>%p",person);
        NSLog(@"copyPerson>>>>>>>>%p",copyPerson);
        
    }
    return 0;
}

