//
//  LZBMainViewController.m
//  LZBTabbarViewController
//
//  Created by zibin on 16/11/1.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "LZBMainViewController.h"
#import "LZBFirstVC1.h"


@interface LZBMainViewController ()
@property (nonatomic, strong) UIButton *button;
@property (nonatomic, strong) UILabel *textLable;
@end

@implementation LZBMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.textLable];
    [self.view addSubview:self.button];
    self.textLable.text = @"这个main第一个导航控制器栈下的根控制器";
    self.textLable.center = self.view.center;
    self.textLable.bounds = CGRectMake(0, 0,200, 200);
    self.button.center = CGPointMake([UIScreen mainScreen].bounds.size.width * 0.5, 100);
    self.button.bounds = CGRectMake(0, 0, 200, 40);

}

- (void)buttonClick
{
    [self.navigationController pushViewController:[[LZBFirstVC1 alloc]init] animated:YES];
}


- (UILabel *)textLable
{
  if(_textLable == nil)
  {
      _textLable = [UILabel new];
      _textLable.textAlignment = NSTextAlignmentCenter;
      _textLable.numberOfLines = 0;
  }
    return _textLable;
}

- (UIButton *)button
{
  if(_button == nil)
  {
      _button = [UIButton buttonWithType:UIButtonTypeCustom];
      [_button setTitle:@"跳转到下一页" forState:UIControlStateNormal];
      _button.backgroundColor = [UIColor blackColor];
      [_button addTarget:self action:@selector(buttonClick) forControlEvents:UIControlEventTouchUpInside];
      
  }
    return _button;
}
@end
