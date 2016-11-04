//
//  LZBThreeVC2.m
//  LZBTabbarViewController
//
//  Created by zibin on 16/11/4.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "LZBThreeVC2.h"

@interface LZBThreeVC2 ()

@end

@implementation LZBThreeVC2

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor yellowColor];
    
}

- (void)buttonClick
{
    [self.navigationController pushViewController:[[LZBThreeVC2 alloc]init] animated:YES];
}


@end
