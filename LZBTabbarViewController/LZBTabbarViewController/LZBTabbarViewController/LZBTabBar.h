//
//  LZBTabBar.h
//  LZBTabbarViewController
//
//  Created by zibin on 16/11/1.
//  Copyright © 2016年 apple. All rights reserved.
//

#import <UIKit/UIKit.h>

@class LZBTabBar;
#pragma mark- LZBTabBarItem 配置LZBTabBar样式
@interface LZBTabBarItem : UIControl
/**
 *  TabBar单个item的高度
 */
@property (nonatomic, assign) CGFloat itemHeight;


@end


@protocol LZBTabBarDelegate <NSObject>

/**
 判断tabbbar是否被点击
 
 @param tabBar 自定义tabbar
 @param index 点击的tabbar的index
 @return 是否允许
 */
- (BOOL)tabBar:(LZBTabBar *)tabBar shouldSelectItemAtIndex:(NSInteger)index;


/**
 点击tabbar的index

 @param tabBar 自定义tabbar
 @param index 点击的tabbar的index
 */
- (void)tabBar:(LZBTabBar *)tabBar didSelectItemAtIndex:(NSInteger)index;
@end

@interface LZBTabBar : UIView

/**
 *  自定义tabbar的delegate
 */
@property (nonatomic, weak) id<LZBTabBarDelegate> delegate;

/**
 *  TabBar设置按钮数组items
 */
@property (nonatomic , strong) NSArray<LZBTabBarItem *>*items;

/**
 *  TabBar设置当前选中的item
 */
@property (nonatomic , strong) LZBTabBarItem *currentSelectItem;

/**
 * TabBar顶部分割线
 */
@property (nonatomic , strong) UIView *topLine;

/**
 * TabBar背景View
 */
@property (nonatomic , strong) UIView *backgroundView;


@end



