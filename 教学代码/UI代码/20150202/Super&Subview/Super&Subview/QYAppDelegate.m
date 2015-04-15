//
//  QYAppDelegate.m
//  Super&Subview
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
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    
    UIView *firstView = [[UIView alloc] initWithFrame:CGRectMake(50, 100, [UIScreen mainScreen].bounds.size.width-50*2, [UIScreen mainScreen].bounds.size.height-100*2)];
    firstView.backgroundColor = [UIColor redColor];
    //firstView.alpha = 0.5;
    //firstView.clipsToBounds = YES; // 设置子视图在超出父视图的范围后是否被剪裁，默认是NO，不是物理剪裁，是视觉效果上的剪裁，不影响子视图的size
    
    UIView *secondView = [[UIView alloc] initWithFrame:CGRectMake(30, 30, 220, firstView.frame.size.height)];
    secondView.backgroundColor = [UIColor magentaColor];
    [firstView addSubview:secondView];
    
    UIView *thirdView = [[UIView alloc] initWithFrame:CGRectMake(60, 60, 220, firstView.frame.size.height)];
    thirdView.backgroundColor = [UIColor yellowColor];
    [firstView addSubview:thirdView];
    NSLog(@"secondView >>>>>>> %@", secondView);
    NSLog(@"thirdView's parent >>>>>>> %@", thirdView.superview);

    
    UIView *fourthView = [[UIView alloc] initWithFrame:CGRectMake(90, 90, 220, firstView.frame.size.height)];
    fourthView.backgroundColor = [UIColor blackColor];
    [firstView addSubview:fourthView];

    
    // 交换两个子视图的位置
    NSArray *subArray = [firstView subviews];
    NSLog(@"subArray >>>>>>> %@", subArray);
    // 交换位置的时候不影响原来视图的frame bounds center，只是改变 了 子视图的显示次序
    //[firstView exchangeSubviewAtIndex:0 withSubviewAtIndex:1];
    
    // 移除视图，想移除谁，向谁发送removeFromSuperview
    //[thirdView removeFromSuperview];
    
    //把第一个视图带到顶层
    [firstView bringSubviewToFront:secondView];
    
    
    
    [self.window addSubview:firstView];
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
