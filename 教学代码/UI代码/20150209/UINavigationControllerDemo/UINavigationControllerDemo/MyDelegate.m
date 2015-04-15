//
//  MyDelegate.m
//  UINavigationControllerDemo
//
//  Created by qingyun on 15-2-9.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import "MyDelegate.h"

@implementation MyDelegate

- (void)navigationController:(UINavigationController *)navigationController willShowViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    NSLog(@"MY deletegate %s WILL SHOW <<<<<<<<< %@ >>>>>>>>", __func__, viewController);
}

- (void)navigationController:(UINavigationController *)navigationController didShowViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    NSLog(@"MY deletegate %s DID SHOW <<<<<<<<< %@ >>>>>>>>", __func__, viewController);
}

@end
