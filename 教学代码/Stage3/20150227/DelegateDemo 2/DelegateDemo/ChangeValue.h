//
//  ChangeValue.h
//  DelegateDemo
//
//  Created by qingyun on 14/12/24.
//  Copyright (c) 2014年 hnqingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ChangeValue <NSObject>

@optional
- (void)changeLabelText:(NSString *)text;

@end
