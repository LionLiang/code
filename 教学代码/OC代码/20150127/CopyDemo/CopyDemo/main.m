//
//  main.m
//  CopyDemo
//
//  Created by 大坏蛋 on 15-1-27.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import <Foundation/Foundation.h>

/*
 *  本例中所有******的部分都是容易混淆的概念
 *  希望大家回看的时候注意！！！！！
 */

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        /*-------------------- 系统类的copy --------------------*/
        //NSString
        NSString *str = [NSString stringWithFormat:@"i'm %d years old.",18];
        NSLog(@"str >>>>>>>>>> %p", str);
        NSString *str1 = [str copy]; // 浅拷贝
        //NSString *str1 = str;
        NSLog(@"str1 >>>>>>>>>> %p", str1);
        
        //NSArray
        NSArray *array = [NSArray arrayWithObjects:@"one",@"two",@"three", nil];
        
        // NSMutableArray *testMutable = array; 有警告，意思是要将该不可变数组转成一个可变数组才能做这样的赋值
        
        NSArray *array1 = [array copy]; // 浅拷贝
        NSLog(@"array >>> %p;array1>>> %p.", array ,array1);
        
        //NSDictionary
        NSMutableDictionary *mutableDict = [[NSMutableDictionary alloc] initWithObjectsAndKeys:@"one", @"kOne",@"two",@"kTwo",@"three",@"kThree", nil];
        
        NSMutableDictionary *mutableDcit1 = [mutableDict copy]; // 深拷贝
        
        NSLog(@"mutableDict >>> %p;mutableDcit1>>> %p.", mutableDict ,mutableDcit1);
        
        
        // 结论:不可变的NSString,NSArray,NSDcitionary的copy是浅拷贝
        //     可变的NSString,NSArray,NSDcitionary的copy是深拷贝
        
        NSMutableArray *mutableArray = [NSMutableArray arrayWithArray:array];
        NSArray *mutableArray1 = [mutableArray copy]; //深拷贝
        [mutableArray replaceObjectAtIndex:1 withObject:@"TWO"];
        //[mutableArray1 replaceObjectAtIndex:1 withObject:@"TWO"]; 实际上可变的数组经过copy之后得到是一个不可变的数组，虽然这个过程是深拷贝 ********
        
        NSLog(@"mutableArray >>> %p;mutableArray1>>> %p.", mutableArray ,mutableArray1);
        
        NSLog(@"mutableArray[1]>>>>>>%p", mutableArray[1]);
        // 对与可变的NSString,NSArray,NSDcitionary的copy深拷贝，但是其中包含的元素并没有做深拷贝，实际上也是引用包含的关系
        NSLog(@"mutableArray1[1]>>>>>>%p", mutableArray1[1]);
        /*-------------------- 系统类的copy --------------------*/
        
        
        /*-------------------- 系统类的mutableCopy --------------------*/
        NSString *str11 = @"suibian";
        NSMutableString *mStr11 = [str11 mutableCopy]; // 深拷贝，从不可变的数组直接变成一个可变的
        
        
        NSMutableArray *mArray11 = [NSMutableArray arrayWithArray:array];
        NSMutableArray *mArray12 = [mArray11 mutableCopy];
        [mArray11 removeObjectAtIndex:1];
        NSLog(@"mArray11>>>>>>>>>>>>>>>>>%p", mArray11);
        for (NSString * obj in mArray11) {
            NSLog(@"obj>>>>>>%p", obj);
        }
        [mArray12 removeObjectAtIndex:0];
        NSLog(@"mArray12>>>>>>>>>>>>>>>>>%p", mArray12);
        for (NSString * obj in mArray12) {
            NSLog(@"obj>>>>>>%p", obj);
        }
        
        /*-------------------- 系统类的mutableCopy --------------------*/
        
        
        //关于系统类的拷贝结论
        
        // 1 搞清楚copy和赋值并不是一回事，copy实际是发送过copy消息之后执行了copyWithZone的方法来实现的
        //   赋值就是一层强引用的关系 *****
        // 2 不可变的NSString,NSArray,NSDcitionary的copy是浅拷贝
        // 3 可变的NSString,NSArray,NSDcitionary的copy是深拷贝，拷贝之后得到的都是不可变的 ******
        // 4 不可变的NSString,NSArray,NSDcitionary的mutableCopy是深拷贝，而且拷贝之后都变成可变的 ******
        // 5 可变的NSString,NSArray,NSDcitionary的mutableCopy是深拷贝
        // 6 不管是深拷贝还是浅拷贝，对于集合类型而言，集合中的元素都是浅拷贝 *****
        
        
        
    }
    return 0;
}

