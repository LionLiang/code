//
//  TransValueProtocol.h
//  TransValueDemo
//
//  Created by qingyun on 15-2-26.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol TransValueProtocol <NSObject>

@optional
- (void)changeName:(NSString *)name;

@end
