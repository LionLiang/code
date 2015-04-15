//
//  QYAppDelegate.m
//  ViewRectDemo
//
//  Created by qingyun on 15-2-2.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import "QYAppDelegate.h"

@implementation QYAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor greenColor];
    
    UIView *firstView = [[UIView alloc] initWithFrame:CGRectMake(100, 200, [UIScreen mainScreen].bounds.size.width-100*2, [UIScreen mainScreen].bounds.size.height-200*2)];
    firstView.backgroundColor = [UIColor redColor];
    firstView.alpha = 0.5;
    
    
    // 通过NSStringFromCGPoint来输出一个点
    NSLog(@"bounds.size >>>>>>>> %@", NSStringFromCGSize(firstView.bounds.size));
    NSLog(@"center1 >>>>>>>> %@", NSStringFromCGPoint(firstView.center));
//    firstView.center = CGPointMake(200, 200);
//    NSLog(@"bounds.size >>>>>>>> %@", NSStringFromCGSize(firstView.frame.size));
//    NSLog(@"center2 >>>>>>>> %@", NSStringFromCGPoint(firstView.center));
    // 改变center点可以改变uiview的位置，但是不会改变矩形区域大小
    
    firstView.bounds = CGRectMake(0, 0, 100, 100);
    NSLog(@"frame3.size >>>>>>>> %@", NSStringFromCGSize(firstView.frame.size));
    NSLog(@"center3 >>>>>>>> %@", NSStringFromCGPoint(firstView.center));
    // 改变size（frame和bouns中的一样）,可以改变试图的尺寸大小，但是不能改变center点
    
    
    [self.window addSubview:firstView];
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
