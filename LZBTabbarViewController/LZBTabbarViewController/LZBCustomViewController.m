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
    self.viewControllers = @[c1,c2,c3];
    
    c1.lzb_tabBarItem.selectImage = [UIImage imageNamed:@"icon_tab_btn_discover_s"];
    c1.lzb_tabBarItem.unSelectImage = [UIImage imageNamed:@"icon_tab_btn_discover_x"];
    c1.lzb_tabBarItem.badgeValue = @"1";
    c1.lzb_tabBarItem.title = @"1";
    
   
    c2.lzb_tabBarItem.selectImage = [UIImage imageNamed:@"icon_tab_btn_grow-up_s"];
    c2.lzb_tabBarItem.unSelectImage = [UIImage imageNamed:@"icon_tab_btn_grow-up_x"];
    c2.lzb_tabBarItem.title = @"2";
    
   
    c3.lzb_tabBarItem.selectImage = [UIImage imageNamed:@"icon_tab_btn_me_s"];
    c3.lzb_tabBarItem.unSelectImage = [UIImage imageNamed:@"icon_tab_btn_me_x"];
    c3.lzb_tabBarItem.title = @"3";
    
}





@end
