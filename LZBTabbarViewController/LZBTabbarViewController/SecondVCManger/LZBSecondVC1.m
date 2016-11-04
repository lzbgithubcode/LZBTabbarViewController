//
//  LZBSecondVC1.m
//  LZBTabbarViewController
//
//  Created by zibin on 16/11/4.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "LZBSecondVC1.h"
#import "LZBSecondVC2.h"

@interface LZBSecondVC1 ()

@end

@implementation LZBSecondVC1

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor blueColor];
    
}

- (void)buttonClick
{
    [self.navigationController pushViewController:[[LZBSecondVC2 alloc]init] animated:YES]; 
}



@end
