//
//  QYAppDelegate.m
//  UIWindowDemo
//
//  Created by qingyun on 15-2-2.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import "QYAppDelegate.h"

@implementation QYAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // 手动创建UIWindow，initWithFrame:[[UIScreen mainScreen] bounds]的意思按主屏幕 的 大小创建UIWindow的矩形区域
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // applicationFrame代表的是屏幕除去状态栏的剩余区域
    //self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] applicationFrame]];
    //手写的硬编码
    //self.window = [[UIWindow alloc] initWithFrame:CGRectMake(0, 0, 320, 568)];
    
    // 改变window的背景颜色
    self.window.backgroundColor = [UIColor whiteColor];
    
    UILabel *myLabel = [[UILabel alloc] initWithFrame:CGRectMake(100, 100, 120, 40)];
    myLabel.backgroundColor = [UIColor brownColor];
    myLabel.text = @"Hello, student!";
    [self.window addSubview:myLabel];
    
    // 让当前已经设置好的window作为主显并且可用
    [self.window makeKeyAndVisible];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
