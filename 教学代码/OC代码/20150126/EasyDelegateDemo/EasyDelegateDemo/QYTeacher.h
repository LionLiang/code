//
//  QYTeacher.h
//  EasyDelegateDemo
//
//  Created by qingyun on 15-1-26.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@class QYStudent;

@interface QYTeacher : NSObject

- (void)listenStudent:(QYStudent *)student;

@end
