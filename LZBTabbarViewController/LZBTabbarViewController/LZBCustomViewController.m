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
    LZBSecondViewController *c2=[[LZBSecondViewController alloc]init];
    LZBThreeViewController *c3=[[LZBThreeViewController alloc]init];
    self.viewControllers = @[c1,c2,c3];
    c1.title = @"首页";
    c1.lzb_tabBarItem.selectImage = [UIImage imageNamed:@"icon_tab_btn_discover_s"];
    c1.lzb_tabBarItem.unSelectImage = [UIImage imageNamed:@"icon_tab_btn_discover_x"];
    
   
    c2.title = @"第二页";
    c2.lzb_tabBarItem.selectImage = [UIImage imageNamed:@"icon_tab_btn_grow-up_s"];
    c2.lzb_tabBarItem.unSelectImage = [UIImage imageNamed:@"icon_tab_btn_grow-up_x"];
    
   
    c3.title = @"第三页";
    c3.lzb_tabBarItem.selectImage = [UIImage imageNamed:@"icon_tab_btn_me_s"];
    c3.lzb_tabBarItem.unSelectImage = [UIImage imageNamed:@"icon_tab_btn_me_x"];
    
}





@end
