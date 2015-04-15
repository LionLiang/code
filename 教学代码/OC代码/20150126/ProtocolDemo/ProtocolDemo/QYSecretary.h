//
//  QYSecretary.h
//  ProtocolDemo
//
//  Created by qingyun on 15-1-26.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "SecrectrayProtocol.h"

@interface QYSecretary : NSObject
{
    NSString *_name;
}

- (void)work;

- (void)tuodi;

@property NSString *name;

@end
