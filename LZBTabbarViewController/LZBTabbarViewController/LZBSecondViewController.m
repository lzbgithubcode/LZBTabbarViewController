//
//  LZBSecondViewController.m
//  LZBTabbarViewController
//
//  Created by zibin on 16/11/1.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "LZBSecondViewController.h"
#import "LZBSecondVC1.h"

@interface LZBSecondViewController ()


@end

@implementation LZBSecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor purpleColor];

    
}

- (void)buttonClick
{
     [self.navigationController pushViewController:[[LZBSecondVC1 alloc]init] animated:YES];
}



@end
