//
//  main.m
//  test
//
//  Created by qingyun on 15-1-23.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    
    //NSObject *obj = [NSObject new]; // 默认走的是先alloc然后调用init
    
    // 推荐的做法
    NSObject *obj1 = [[NSObject alloc] init]; // 实际对一个设计成功的类来说，会提供各种初始化方法，所以在alloc之后，应该根据不同需求来选择合适的初始化方法，所以我们要摈弃new的写法
    
    
    //NSObject *obj2 = [NSObject alloc];
    //[obj2 init];
    //这种方式也是不合理的做法，有些情况下init返回的真正的地址并不是开始alloc的地址，所以最好写在一起当真正能获取到一个有效的对象地址的时候再接受
    
    
    //NSString *str = [NSString alloc] in
    
    return 0;
}

