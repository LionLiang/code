//
//  QYAppDelegate.m
//  UINavigationControllerDemo
//
//  Created by qingyun on 15-2-6.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import "QYAppDelegate.h"
#import "QYViewController.h"
#import "MyDelegate.h"
#import "MyNavigationViewController.h"

@implementation QYAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    QYViewController *firstVC = [[QYViewController alloc] init];
    NSLog(@"firstVC.navigationCongtroller >>>>>>> %@", firstVC.navigationController);
    
    //1.初始化UINavigationController
    //UINavigationController *navgationVC = [[UINavigationController alloc] initWithRootViewController:firstVC]; //firstVC就是当前UINavigationController的 基栈
    
    // 新的扩展，自定义一个MyNavigationViewController集成自UINavigationController，并且为其扩展一个新的属性delegateClass，设为strong用来强引用代理类
    MyNavigationViewController *navgationVC = [[MyNavigationViewController alloc] init];
    NSLog(@"navigation >>>>>> %@", navgationVC);
    [navgationVC pushViewController:firstVC animated:YES];
    /******这是正确的写法
     初始化一个自定义代理类作为navgationVC的代理，同时赋给navgationVC.delegateClass做一次强引用
     ******/
    navgationVC.delegateClass = [[MyDelegate alloc] init];
    navgationVC.delegate = navgationVC.delegateClass;
    /******这是错误的写法
     原因是UINavigationController的delegate属性是弱引用，出去该作用域之后tmpDelegate失效，[[MyDelegate alloc] init]造出的自定义代理立刻被销毁从而导致程序崩溃
    MyDelegate *tmpDelegate = [[MyDelegate alloc] init];
    navgationVC.delegate = tmpDelegate;
    *******/
    
    // 经过push之后firstVC的navigationController就有值了
    // firstVC.navigationCongtroller ------> navgationVC
    NSLog(@"firstVC.navigationCongtroller >>>>>>> %@", firstVC.navigationController);
    
    //2.然后将初始化过的UINavigationController作为window的rootViewController
    self.window.rootViewController = navgationVC;

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
