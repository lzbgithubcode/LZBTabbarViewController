//
//  AppDelegate.m
//  LZBTabbarViewController
//
//  Created by zibin on 16/11/1.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "AppDelegate.h"
#import "LZBTabBarViewController.h"
#import "LZBMainViewController.h"
#import "LZBSecondViewController.h"
#import "LZBThreeViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
   
    //1.创建Window
     self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
     self.window.backgroundColor = [UIColor whiteColor];

     //a.初始化一个tabBar控制器
     LZBTabBarViewController *tb=[[LZBTabBarViewController alloc]init];
     //设置控制器为Window的根控制器
     self.window.rootViewController=tb;
    
    //子控件
    LZBMainViewController *c1=[[LZBMainViewController alloc]init];
    c1.title = @"首页";
    
    LZBSecondViewController *c2=[[LZBSecondViewController alloc]init];
    c2.title = @"第二页";
    
    LZBThreeViewController *c3=[[LZBThreeViewController alloc]init];
    c3.title = @"第三页";
    tb.viewControllers = @[c1,c2,c3];
    
    
    
    //2.设置Window为主窗口并显示出来
    [self.window makeKeyAndVisible];
    
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
