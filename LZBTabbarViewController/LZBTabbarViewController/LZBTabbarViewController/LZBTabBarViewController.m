//
//  LZBTabBarViewController.m
//  LZBTabbarViewController
//
//  Created by zibin on 16/11/1.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "LZBTabBarViewController.h"

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


#pragma mark - lazy
- (UIView *)contentView
{
  if(_contentView == nil)
  {
      _contentView = [UIView new];
      _contentView.backgroundColor = [UIColor greenColor];
      _contentView.autoresizingMask = UIViewAutoresizingFlexibleWidth|
      UIViewAutoresizingFlexibleHeight;
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
       _tabbar.delegate = self;
   }
    return _tabbar;
}
@end
