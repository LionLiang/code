//
//  main.m
//  FoxconnDemo
//
//  Created by qingyun on 15-1-26.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Foxconn.h"
#import "Phone.h"
#import "Computer.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Foxconn *fObj = [[Foxconn alloc] initWithApple];
        
        NSLog(@"最新出厂产品:iphone:%@,iMac:%@", fObj.phone, fObj.computer);
        
//        Foxconn *fObj = [[Foxconn alloc] initWithMircosoft];
//        
//        NSLog(@"最新出厂产品:iphone:%@,iMac:%@", fObj.phone, fObj.computer);
        
    
        Phone *myPhone = [[Phone alloc] init];
        
        Computer *myComputer = [[Computer alloc] init];
        
        fObj = [[Foxconn alloc] initWithPhone:myPhone andComputer:myComputer];
    }
    return 0;
}

