//
//  main.m
//  ARCDemo
//
//  Created by qingyun on 15-1-23.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "EasyClass.h"

int main(int argc, const char * argv[])
{
    
    /*---------------强引用------------------*/
    
    // 1.变量超出作用域（自己创建的对象）
    {
        id obj; //id __storng obj;
        NSLog(@"obj >>>>> %p", obj);
        obj = [[NSObject alloc] init];
        NSLog(@"obj >>>>> %p", obj);
        NSLog(@"obj >>>>> %@", obj);
        // 编译器能判断出是否要出去这个作用域了，默认在出去之前加了一个[obj release];
        // release之后在这个例子中obj指向的对象现在的计数器为 0 了，那么就会被dealloc
    }
    
    // 2.仍然是超出作用域（不是自己创建的对象）
    {
        NSString *string = [NSString stringWithFormat:@"this is a %d", 1];
        id obj2 = string;
        //[obj2 retain] 这个地方也是编译器帮我们做的
        //[obj2 release] 在即将出作用域范围的时候，release一次
    }
    
    
    // 3.访问的时候，用最简单的赋值来demo
    
    id obj3 = [NSObject new]; //对象A
    id obj31 = [NSObject new]; //对象B
    id obj32 = nil;
    
    obj3 = obj31; // A对象的强引用失效，被销毁
    obj31 = obj32; // obj31归为nil的时候，它对对象B的强引用失效，编译器会做一次release
    obj3 = nil; // 这个时候obj3对对象B的强引用也失效，编译器再做一次release，这个时候对象B也被销毁
    
    
    // 4.循环引用
    {
        id obj4 = [EasyClass new]; // 对象A
        id obj41 = [EasyClass new]; // 对象B
        
        [obj4 setObj:obj41];
        [obj41 setObj:obj4];
        
        // 在将要出去作用域范围的时候obj4对a的强引用失效，obj41对b的强引用也失效，按常理是要释放对象A和B
        // 但是A和B又互相强引用，所以对象A和B都不能释放，出了作用域之后虽然obj4和obj41都是失效，但是A和B的内存却已经泄漏
    }
        
    // 5.内循环
    {
        id obj5 = [EasyClass new];
        [obj5 setObj:obj5];
    }
    
    
    // 4和5的两种情况都是属于循环引用，这种做法在软件工程中一般都要规避，如果非要出现怎么办？？？
    // 引入弱引用
    
    /*-----------------------弱引用-----------------------*/
    
    // id __weak obj6 = [[NSObject alloc] init]; 在对象没有强引用的时候，实例化之后立刻就被释放了，所以这样写有警告
    id __weak obj6;
    {
        id obj61 = [NSObject new];
        obj6 = obj61;
        
        NSLog(@"obj6============%@", obj6);
    
    }
    NSLog(@"obj6============%@", obj6);
    NSLog(@"obj6============%p", obj6); //弱引用归零的概念，就是弱引用指向的对象的强引用一旦失效，对象立刻被销毁，弱引用立刻也失效
    
    
    /*-----------------------__autoreleasing-------------------*/
#if 0
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    EasyClass *obj7 = [[EasyClass alloc] init];
    NSString *string7 = [obj7 description];
    [pool release];
#else
    @autoreleasepool {
        EasyClass *obj7 = [[EasyClass alloc] init];
        NSLog(@"obj7-==========%@", obj7);
    }
#endif
    
    return 0;
}

