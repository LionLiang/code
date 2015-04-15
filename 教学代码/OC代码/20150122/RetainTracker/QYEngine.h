//
//  QYEngine.h
//  RetainTracker
//
//  Created by qingyun on 15-1-22.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QYEngine : NSObject
{
    NSString *_name;
}

- (void)setName:(NSString *)name;

- (NSString *)name;
@end
