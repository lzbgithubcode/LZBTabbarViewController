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
@property(nonatomic, strong, readonly)  UIViewController *lzb_selectedViewController;


/**
 当前选中的控制器,是否包含动画效果

 @param selectedViewController 选中按个控制器
 @param animation 动画效果
 */
- (void)setSelectedViewController:(UIViewController *)selectedViewController  animation:(BOOL)animation;


/**
 *  当前选中的控制器的索引
 */
@property(nonatomic, assign) NSUInteger selectedIndex;

/**
  当前选中的控制器索引,是否包含动画效果

 @param selectedIndex 选中索引
 @param animation 是否动画
 */
- (void)setSelectedIndex:(NSUInteger)selectedIndex animation:(BOOL)animation;


/**
    是否允许动画
 */
@property (nonatomic, assign) BOOL isShouldAnimation;

/**
 *  获得当前tabbar
 */
@property(nonatomic, strong, readonly) LZBTabBar *lzb_tabBar;

/**
 *   隐藏导航条
 */
@property(nonatomic, assign)  BOOL lzb_tabBarHidden;


/**
    隐藏导航条，是否动画
 */
- (void)setLzb_tabBarHidden:(BOOL)lzb_tabBarHidden animated:(BOOL)animation;

@end

@protocol LZBTabBarViewControllerDelegate <NSObject>

@optional

/**
 是否点击控制器

 @param tabBarController tabbar控制器
 @param viewController   点击的那个控制器
 @return 是否允许
 */
- (BOOL)lzb_tabBarController:(LZBTabBarViewController *)tabBarController shouldSelectViewController:(UIViewController *)viewController;


/**
 选择tabbar控制器
 
 @param tabBarController tabbar控制器
 @param viewController 点击的那个控制器
 */
- (void)lzb_tabBarController:(LZBTabBarViewController *)tabBarController didSelectViewController:(UIViewController *)viewController;

@end

@interface UIViewController (LZBTabBarViewControllerItem)

@property(nonatomic, strong) LZBTabBarItem *lzb_tabBarItem;

@property(nonatomic, strong) LZBTabBarViewController *lzb_tabBarController;
@end



