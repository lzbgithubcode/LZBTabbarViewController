//
//  LZBThreeViewController.m
//  LZBTabbarViewController
//
//  Created by zibin on 16/11/1.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "LZBThreeViewController.h"
#import "LZBThreeVC1.h"

@interface LZBThreeViewController ()

@end

@implementation LZBThreeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
    
}

- (void)buttonClick
{
   [self.navigationController pushViewController:[[LZBThreeVC1 alloc]init] animated:YES];   
}




@end
