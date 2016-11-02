//
//  LZBTabBarViewController.m
//  LZBTabbarViewController
//
//  Created by zibin on 16/11/1.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "LZBTabBarViewController.h"

#define LZB_TABBAR_DEFULT_HEIGHT 49
@interface LZBTabBarViewController ()<LZBTabBarDelegate>

@property (nonatomic, strong) UIView *contentView;
@property (nonatomic, strong) LZBTabBar *tabbar;
@end

@implementation LZBTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.contentView];
    [self.view addSubview:self.tabbar];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self setSelectedIndex:self.selectedIndex];
}

#pragma mark- API
- (void)setViewControllers:(NSArray<UIViewController *> *)viewControllers
{
    if(viewControllers.count == 0) return;
    //移除之前的
    for (UIViewController *viewController in _viewControllers)
    {
        //注意：在removeFromParentViewController必须先调用willMoveToParentViewController
        [viewController willMoveToParentViewController:nil];
        [viewController.view removeFromSuperview];
        [viewController removeFromParentViewController];
    }
    
    _viewControllers = viewControllers;
    
    NSMutableArray *tabBarItems = [NSMutableArray array];
    for (UIViewController *viewController in viewControllers) {
        LZBTabBarItem *tabBarItem = [[LZBTabBarItem alloc] init];
         [tabBarItems addObject:tabBarItem];
         [tabBarItem setTitle:viewController.title];
    }
    [self.tabbar setItems:tabBarItems];
}

- (void)setSelectedIndex:(NSUInteger)selectedIndex
{
    if(selectedIndex >= self.viewControllers.count) return;
    if(self.selectedViewController)
    {
        [self.selectedViewController willMoveToParentViewController:nil];
        [self.selectedViewController.view removeFromSuperview];
        [self.selectedViewController removeFromParentViewController];
    }
    _selectedIndex = selectedIndex;
    self.tabbar.currentSelectItem = [self.tabbar.items objectAtIndex:selectedIndex];
    
    self.selectedViewController = [self.viewControllers objectAtIndex:selectedIndex];
    [self addChildViewController:self.selectedViewController];
    self.selectedViewController.view.frame = self.contentView.bounds;
    [self.contentView addSubview:self.selectedViewController.view];
    [self.selectedViewController didMoveToParentViewController:self];
    [self setNeedsStatusBarAppearanceUpdate];
    
}

#pragma mark- tabbarDelegate
- (BOOL)tabBar:(LZBTabBar *)tabBar shouldSelectItemAtIndex:(NSInteger)index
{
    if (index < 0 || index >= self.viewControllers.count)  return NO;
    if([self.delegate respondsToSelector:@selector(tabBarController:shouldSelectViewController:)])
    {
        if(![self.delegate tabBarController:self shouldSelectViewController:[self.viewControllers objectAtIndex:index]])
            return NO;
    }
    
    if(self.selectedViewController == [self.viewControllers objectAtIndex:index])
    {
        if([self.selectedViewController isKindOfClass:[UINavigationController class]])
        {
            UINavigationController *selectViewControler = (UINavigationController *)self.selectedViewController;
            //如果不是顶层控制器，就回到顶层
            if(selectViewControler.topViewController != [selectViewControler.viewControllers objectAtIndex:0])
            {
                [selectViewControler popToRootViewControllerAnimated:YES];
            }
        }
        return NO;
    }
    
    return YES;
    
}

- (void)tabBar:(LZBTabBar *)tabBar didSelectItemAtIndex:(NSInteger)index
{
   if (index < 0 || index >= self.viewControllers.count)  return;
    [self setSelectedIndex:index];
    if([self.delegate respondsToSelector:@selector(tabBarController:didSelectViewController:)])
    [self.delegate tabBarController:self didSelectViewController:[self.viewControllers objectAtIndex:index]];
}


#pragma mark - lazy
- (UIView *)contentView
{
  if(_contentView == nil)
  {
      _contentView = [UIView new];
      _contentView.backgroundColor = [UIColor greenColor];
      _contentView.autoresizingMask = UIViewAutoresizingFlexibleWidth|
      UIViewAutoresizingFlexibleHeight;
      _contentView.frame = [UIScreen mainScreen].bounds;
  }
    return _contentView;
}
- (LZBTabBar *)tabbar
{
   if(_tabbar == nil)
   {
       _tabbar = [[LZBTabBar alloc]init];
       _tabbar.backgroundColor = [UIColor yellowColor];
       _tabbar.autoresizingMask = UIViewAutoresizingFlexibleWidth|
                                   UIViewAutoresizingFlexibleTopMargin|
                                   UIViewAutoresizingFlexibleLeftMargin|
                                   UIViewAutoresizingFlexibleRightMargin|
                                    UIViewAutoresizingFlexibleBottomMargin;
       _tabbar.frame = CGRectMake(0, self.contentView.frame.size.height - LZB_TABBAR_DEFULT_HEIGHT, [UIScreen mainScreen].bounds.size.width, LZB_TABBAR_DEFULT_HEIGHT);
       _tabbar.delegate = self;
   }
    return _tabbar;
}
@end
