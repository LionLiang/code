//
//  QYCar.m
//  RetainTracker
//
//  Created by qingyun on 15-1-22.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import "QYCar.h"

#import "QYEngine.h"

@implementation QYCar

- (id)init
{
    self = [super init];
    if(self != nil){
        NSLog(@"init success!");
        QYEngine *defaultEngine = [QYEngine new]; // new的时候：defatulEngine>>>1
        [defaultEngine setName:@"default"];
        
        [self setEngine:defaultEngine]; // setEngine的时候：defatulEngine>>>>2
        return self;
    }
    return self;
}

- (void)setEngine:(QYEngine *)engine
{
//    [engine retain]; // 对newEngine保留一次，说明我们的car当前正在使用newEngine
//    [_engine release]; // 这是对_engine之前保存的defaultEngine的realease，保证之前的这样一个对象的内存不被泄露
//    NSLog(@"_enginge retaincount>>>>%lu", [_engine retainCount]);
//    _engine = engine;
    
    // 实际上只有当传进来的engine跟原来的_engine保存的engine不一样的时候，才需要这样做，如果说一模一样的话，实际这个逻辑不需要走
    if (engine != _engine) {
        [engine retain];
        [_engine release];
        _engine = engine;
    }
}

- (void)dealloc
{
    NSLog(@"car is dead!");
    [_engine release];
    [super dealloc];
}
@end
