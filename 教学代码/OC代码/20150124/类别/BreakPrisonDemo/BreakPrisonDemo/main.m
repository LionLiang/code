//
//  main.m
//  BreakPrisonDemo
//
//  Created by qingyun on 15-1-24.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "EasyPerson.h"

#import "EasyPerson+askIdentify.h"

int main(int argc, const char * argv[])
{
    EasyPerson *easyPerson = [[EasyPerson alloc] init];
    
    [easyPerson school];
    
    
    [easyPerson askIdentify]; // 这个方法本来是属于EasyPerson类的私有方法，通过导入EasyPerson+askIdentify.h的类别声明做了一个前向引用，所以可以使用
    
    
    return 0;
}

