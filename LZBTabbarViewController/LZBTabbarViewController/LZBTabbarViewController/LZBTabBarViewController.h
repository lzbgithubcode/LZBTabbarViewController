//
//  LZBTabBarViewController.h
//  LZBTabbarViewController
//
//  Created by zibin on 16/11/1.
//  Copyright © 2016年 apple. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LZBTabBar.h"

@interface LZBTabBarViewController : UIViewController

/**
 *  子控制数组
 */
@property (nonatomic, strong) NSArray <UIViewController *>*viewControllers;

/**
 *  当前选中的控制器
 */
@property(nonatomic, strong)  UIViewController *selectedViewController;

/**
 *  当前选中的控制器的索引
 */
@property(nonatomic) NSUInteger selectedIndex;

/**
 *  获得当前tabbar
 */
@property(nonatomic,strong,readonly) LZBTabBar *lzb_tabBar;
@end

@interface UIViewController (LZBTabBarViewControllerItem)

@property(nonatomic, strong) LZBTabBarItem *tabBarItem;

@property(nonatomic, readonly, strong) LZBTabBarViewController *lzb_tabBarController;
@end



