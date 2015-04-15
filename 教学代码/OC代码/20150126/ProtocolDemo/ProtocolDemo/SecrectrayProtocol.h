//
//  SecrectrayProtocol.h
//  ProtocolDemo
//
//  Created by qingyun on 15-1-26.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol SecrectrayProtocol <NSObject>

@required
- (void)takeTea;
- (void)phoneCall:(NSString *)message;

@optional
- (void)goShopping;

@end
