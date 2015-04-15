//
//  QYAppDelegate.m
//  UITabBarControllerDemo
//
//  Created by qingyun on 15-2-7.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import "QYAppDelegate.h"
#import "WorldViewController.h"
#import "AlarmViewController.h"
#import "WatchViewController.h"
#import "TimerViewController.h"
#import "MyClockViewController.h"
#import "CustomViewController.h"

@implementation QYAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    // 如何设置tabBarItem
    WorldViewController  *worldVC = [[WorldViewController alloc] init];
    worldVC.title = @"World";
    UITabBarItem *item1 = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemBookmarks tag:1001];
    worldVC.tabBarItem = item1;
    
    AlarmViewController  *alarmVC = [[AlarmViewController alloc] init];
    alarmVC.title = @"Alarm";
    alarmVC.tabBarItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemFavorites tag:1002];
    
    WatchViewController  *watchVC = [[WatchViewController alloc] init];
    watchVC.title = @"Watch";
    TimerViewController  *timerVC = [[TimerViewController alloc] init];
    // 使用标题、图片、选中图片初始化UITabBarItem
    timerVC.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"TIMER" image:[UIImage imageNamed:@"card_icon_promote"] selectedImage:[UIImage imageNamed:@"card_icon_unblock"]];
    // 设置UITabBarItem的badgeValue，消息提示
    timerVC.tabBarItem.badgeValue = @"8";
    timerVC.title = @"Timer";
    
    // UITabbarController集成UINavigationController
    MyClockViewController *myVC = [[MyClockViewController alloc] init];
    myVC.title = @"my";
    myVC.tabBarItem.badgeValue = @"1000"; // 显示的位置跟字符串的长度有关，长的从左开始放

    UINavigationController *myNavigation = [[UINavigationController alloc] initWithRootViewController:myVC];
    
    CustomViewController *customVC = [[CustomViewController alloc] init];
    customVC.title  = @"custom";
    
    UITabBarController *tabbarVC = [[UITabBarController alloc] init];
    // 原来tabbarVC中管理的myVC被集成后的myNavigation代替
    tabbarVC.viewControllers = @[worldVC,myNavigation,alarmVC,watchVC,timerVC,customVC];
    //tabbarVC.tabBar.backgroundImage = [UIImage imageNamed:@"back1"]; // 更改tabbar的背景
    //tabbarVC.tabBar.contentMode = UIViewContentModeScaleAspectFit;
    self.window.rootViewController = tabbarVC;
    
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
