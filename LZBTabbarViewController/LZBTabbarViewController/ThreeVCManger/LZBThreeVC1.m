//
//  LZBThreeVC1.m
//  LZBTabbarViewController
//
//  Created by zibin on 16/11/4.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "LZBThreeVC1.h"
#import "LZBThreeVC2.h"


@interface LZBThreeVC1 ()

@end

@implementation LZBThreeVC1

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor blueColor];

}

- (void)buttonClick
{
     [self.navigationController pushViewController:[[LZBThreeVC2 alloc]init] animated:YES];
}




@end
