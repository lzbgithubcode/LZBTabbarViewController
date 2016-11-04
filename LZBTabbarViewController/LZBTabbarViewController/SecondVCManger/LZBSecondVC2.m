//
//  LZBSecondVC2.m
//  LZBTabbarViewController
//
//  Created by zibin on 16/11/4.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "LZBSecondVC2.h"
#import "LZBCustomViewController.h"

@interface LZBSecondVC2 ()

@end

@implementation LZBSecondVC2

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor yellowColor];
    [self.button setTitle:@"回到tab第二页，并选择首页item" forState:UIControlStateNormal];
    
}

- (void)buttonClick
{
    LZBCustomViewController *tabBarVC =(LZBCustomViewController *)self.lzb_tabBarController;
    [self.navigationController popToRootViewControllerAnimated:NO];
    tabBarVC.selectedIndex = 0;
}



@end
