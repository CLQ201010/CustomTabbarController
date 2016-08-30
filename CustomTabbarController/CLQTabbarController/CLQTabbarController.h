//
//  ViewController.h
//  CustomTabbarController
//
//  Created by ccq chen on 16/8/29.
//  Copyright © 2016年 ccq chen. All rights reserved.
//

#import <UIKit/UIKit.h>
@class CLQTabbarController;

@protocol CLQTabbarDelegate <NSObject>

@optional

- (void)tabBar:(CLQTabbarController *)tabBar didSelectedButtonFrom:(NSInteger)from to:(NSInteger)to;

@end


@interface CLQTabbarController : UITabBarController

@property (nonatomic, strong) CALayer *topLayer; //自定义顶部边框

- (instancetype)initWithControllers:(NSArray *)vcs tabbarModels:(NSArray *)models;
- (void)setCLQTabbarBackgroundImage:(UIImage *)bgImg;

@property (nonatomic, weak) id<CLQTabbarDelegate> clqDelegate;

@end

