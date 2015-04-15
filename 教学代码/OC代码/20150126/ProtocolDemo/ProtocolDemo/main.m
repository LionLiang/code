//
//  main.m
//  ProtocolDemo
//
//  Created by qingyun on 15-1-26.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "QYBoss.h"
#import "QYSecretary.h"
#import "QYNormalSerectary.h"
#import "QYGoodSecretary.h"
#import "QYPractice.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        QYBoss *boss = [[QYBoss alloc] init];
        [boss makeMoney];
        
        QYNormalSerectary *nSecretray = [[QYNormalSerectary alloc] init];
        QYGoodSecretary *gSecretray = [[QYGoodSecretary alloc] init];
        QYPractice *pSecretray = [[QYPractice alloc] init];
    
        NSArray *array = @[nSecretray,gSecretray,pSecretray];
        
        for (QYSecretary *sobj in array) {
            if ([sobj respondsToSelector:@selector(takeTea)]) {
                if ([sobj respondsToSelector:@selector(phoneCall:)]) {
                    if ([sobj respondsToSelector:@selector(goShopping)]) {
                        boss.secretary = sobj;
                    }
                }
            }
        }
        [boss.secretary goShopping];
        NSLog(@"over");
    }
    return 0;
}

