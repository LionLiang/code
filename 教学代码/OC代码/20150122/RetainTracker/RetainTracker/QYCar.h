//
//  QYCar.h
//  RetainTracker
//
//  Created by qingyun on 15-1-22.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@class QYEngine;

@interface QYCar : NSObject
{
    QYEngine *_engine;
}

-(void)setEngine:(QYEngine *)engine;

@end
