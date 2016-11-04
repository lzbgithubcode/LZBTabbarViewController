//
//  LZBMainViewController.m
//  LZBTabbarViewController
//
//  Created by zibin on 16/11/1.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "LZBMainViewController.h"
#import "LZBFirstVC1.h"
#import "LZBTabBarViewController.h"


@interface LZBMainViewController ()

@end

@implementation LZBMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor grayColor];

}


- (void)buttonClick
{
    [self.navigationController pushViewController:[[LZBFirstVC1 alloc]init] animated:YES];
}



@end
