//
//  LZBCustomViewController.m
//  LZBTabbarViewController
//
//  Created by zibin on 16/11/2.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "LZBCustomViewController.h"
#import "LZBMainViewController.h"
#import "LZBSecondViewController.h"
#import "LZBThreeViewController.h"

@interface LZBCustomViewController ()

@end

@implementation LZBCustomViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //子控件
    LZBMainViewController *c1=[[LZBMainViewController alloc]init];
    c1.title = @"首页";
    LZBSecondViewController *c2=[[LZBSecondViewController alloc]init];
    c2.title = @"第二页";
    LZBThreeViewController *c3=[[LZBThreeViewController alloc]init];
    c3.title = @"第三页";
    self.viewControllers = @[[[UINavigationController alloc]initWithRootViewController:c1],[[UINavigationController alloc]initWithRootViewController:c2],[[UINavigationController alloc]initWithRootViewController:c3]];
    
    c1.lzb_tabBarItem.selectImage = [UIImage imageNamed:@"icon_tab_btn_discover_s"];
    c1.lzb_tabBarItem.unSelectImage = [UIImage imageNamed:@"icon_tab_btn_discover_x"];
    c1.lzb_tabBarItem.badgeValue = @"10";
    c1.lzb_tabBarItem.badgeTextColor = [UIColor redColor];
    c1.lzb_tabBarItem.badgeOffset = UIOffsetMake(15, 5);

    
    c2.lzb_tabBarItem.selectImage = [UIImage imageNamed:@"icon_tab_btn_grow-up_s"];
    c2.lzb_tabBarItem.unSelectImage = [UIImage imageNamed:@"icon_tab_btn_grow-up_x"];
    c2.lzb_tabBarItem.badgeBackgroundColor = [UIColor redColor];
    c2.lzb_tabBarItem.badgeBackgroundOffset = UIOffsetMake(20, 5);
   
    c3.lzb_tabBarItem.selectImage = [UIImage imageNamed:@"icon_tab_btn_me_s"];
    c3.lzb_tabBarItem.unSelectImage = [UIImage imageNamed:@"icon_tab_btn_me_x"];
    self.lzb_tabBar.backgroundColor = [UIColor  whiteColor];
    self.isShouldAnimation = YES;
   
}





@end
