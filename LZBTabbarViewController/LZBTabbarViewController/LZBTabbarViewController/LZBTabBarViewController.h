//
//  LZBTabBarViewController.h
//  LZBTabbarViewController
//
//  Created by zibin on 16/11/1.
//  Copyright © 2016年 apple. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LZBTabBar.h"

@protocol LZBTabBarViewControllerDelegate;

@interface LZBTabBarViewController : UIViewController

@property (nonatomic, weak) id<LZBTabBarViewControllerDelegate> delegate;

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

@protocol LZBTabBarViewControllerDelegate <NSObject>

@optional

/**
 是否点击控制器

 @param tabBarController tabbar控制器
 @param viewController   点击的那个控制器
 @return 是否允许
 */
- (BOOL)tabBarController:(LZBTabBarViewController *)tabBarController shouldSelectViewController:(UIViewController *)viewController;


/**
 选择tabbar控制器
 
 @param tabBarController tabbar控制器
 @param viewController 点击的那个控制器
 */
- (void)tabBarController:(LZBTabBarViewController *)tabBarController didSelectViewController:(UIViewController *)viewController;

@end

@interface UIViewController (LZBTabBarViewControllerItem)

@property(nonatomic, strong) LZBTabBarItem *tabBarCurrentItem;

@property(nonatomic, readonly, strong) LZBTabBarViewController *lzb_tabBarController;
@end



