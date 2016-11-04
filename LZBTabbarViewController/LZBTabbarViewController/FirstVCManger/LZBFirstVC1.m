//
//  LZBFirstVC1.m
//  LZBTabbarViewController
//
//  Created by zibin on 16/11/4.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "LZBFirstVC1.h"
#import "LZBFirstVC2.h"
#import "LZBTabBarViewController.h"
@interface LZBFirstVC1 ()

@end

@implementation LZBFirstVC1

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
  
    
}


- (void)buttonClick
{
    [self.navigationController pushViewController:[[LZBFirstVC2 alloc]init] animated:YES];
}


@end
