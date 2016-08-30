//
//  AppDelegate.m
//  CustomTabbarController
//
//  Created by ccq chen on 16/8/29.
//  Copyright © 2016年 ccq chen. All rights reserved.
//

#import "AppDelegate.h"
#import "CLQTabbarController.h"
#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"
#import "FourthViewController.h"
#import "FifthViewController.h"
#import "CLQTabbarModel.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    
    FirstViewController *firstVC = [[FirstViewController alloc] init];
    CLQTabbarModel *firstModel = [[CLQTabbarModel alloc] init];
    firstModel.title = @"First";
    firstModel.normalImg = [UIImage imageNamed:@"tabbar_home"];
    firstModel.selectedImg = [UIImage imageNamed:@"tabbar_homeHL"];
    
    SecondViewController *secndVC = [[SecondViewController alloc] init];
    CLQTabbarModel *secondModel = [[CLQTabbarModel alloc] init];
    secondModel.title = @"Second";
    secondModel.normalImg = [UIImage imageNamed:@"tabbar_home"];
    secondModel.selectedImg = [UIImage imageNamed:@"tabbar_homeHL"];
    secondModel.topMargin = 5;
    secondModel.imgHeight = 30;
    
    ThirdViewController *thirdVC = [[ThirdViewController alloc] init];
    CLQTabbarModel *thirdModel = [[CLQTabbarModel alloc] init];
    thirdModel.normalImg = [UIImage imageNamed:@"tabbar_add"];
    thirdModel.selectedImg = [UIImage imageNamed:@"tabbar_addHL"];
    thirdModel.imgHeight = 40;
    thirdModel.topMargin = 4;
    
    FourthViewController *fourthVC = [[FourthViewController alloc] init];
    CLQTabbarModel *fourthModel = [[CLQTabbarModel alloc] init];
    fourthModel.title = @"Fourth";
    fourthModel.normalImg = [UIImage imageNamed:@"tabbar_me"];
    fourthModel.selectedImg = [UIImage imageNamed:@"tabbar_meHL"];
    
    FifthViewController *fifthVC = [[FifthViewController alloc] init];
    CLQTabbarModel *fifthModel = [[CLQTabbarModel alloc] init];
    fifthModel.title = @"Fifth";
    fifthModel.titleFont = [UIFont systemFontOfSize:20];
    fifthModel.bottomMargin = 15;
    fifthModel.imgHeight = 0;
    fifthModel.textImgMargin = 10;

    NSArray *vcs = @[firstVC,secndVC,thirdVC,fourthVC,fifthVC];
    NSArray *models = @[firstModel,secondModel,thirdModel,fourthModel,fifthModel];
    
    CLQTabbarController *clqTab = [[CLQTabbarController alloc] initWithControllers:vcs tabbarModels:models];
    self.window.rootViewController = clqTab;
    
    [self.window makeKeyAndVisible];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
