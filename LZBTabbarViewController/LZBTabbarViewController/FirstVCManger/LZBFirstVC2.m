//
//  LZBFirstVC2.m
//  LZBTabbarViewController
//
//  Created by zibin on 16/11/4.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "LZBFirstVC2.h"

@implementation LZBFirstVC2

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor yellowColor];
    [self.button setTitle:@"回到首页" forState:UIControlStateNormal];
    
}

- (void)buttonClick
{
    [self.navigationController popToRootViewControllerAnimated:YES];
}


@end
