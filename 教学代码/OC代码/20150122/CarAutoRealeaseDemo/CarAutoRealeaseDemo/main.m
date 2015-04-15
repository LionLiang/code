//
//  main.m
//  CarAutoRealeaseDemo
//
//  Created by qingyun on 15-1-22.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "QYCar.h"
#import "QYEngine.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        QYCar *car = [QYCar new];
        [car autorelease];
        [car returnEngine];
        
    }
    
    return 0;
}

