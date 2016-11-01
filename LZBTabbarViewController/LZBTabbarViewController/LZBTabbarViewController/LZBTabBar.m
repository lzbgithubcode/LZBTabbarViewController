//
//  LZBTabBar.m
//  LZBTabbarViewController
//
//  Created by zibin on 16/11/1.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "LZBTabBar.h"
#define default_TopLine_Height 0.5

@interface LZBTabBar()
@property (nonatomic, assign) CGFloat itemWidth;

@end

@implementation LZBTabBar

- (instancetype)initWithFrame:(CGRect)frame
{
  if(self = [super initWithFrame:frame])
  {
      [self setupUI];
  }
    return self;
}

- (void)setupUI
{
    [self addSubview:self.backgroundView];
    [self.backgroundView addSubview:self.topLine];
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    CGSize frameSize = self.bounds.size;
    CGPoint frameCenter = self.center;
    self.backgroundView.frame = self.bounds;
    self.topLine.frame = CGRectMake(0, 0, frameSize.width, default_TopLine_Height);
    
    //布局
    NSInteger index = 0;
    self.itemWidth = frameSize.width/self.items.count;
    for (LZBTabBarItem *item in self.items) {
        CGFloat itemHeight = [item itemHeight];
        if(!itemHeight)
            itemHeight = frameSize.height;
        CGFloat itemW = self.itemWidth;
        CGFloat itemH = itemHeight;
        CGFloat itemCenterX = index *itemW;
        CGFloat itemCenterY = frameCenter.y;
        item.bounds = CGRectMake(0, 0, itemW, itemH);
        item.center = CGPointMake(itemCenterX, itemCenterY);
        [item setNeedsDisplay];
        index++;
    }
    
    
}

#pragma mark- API
- (void)setItems:(NSArray<LZBTabBarItem *> *)items
{
    if(items.count == 0) return;
    //移除所有子控件
    for (LZBTabBarItem *item in items)
    {
        [item removeFromSuperview];
    }
      _items = [items copy];
    
    for (LZBTabBarItem *item in items)
    {
        [self addSubview:item];
        [item addTarget:self action:@selector(tabbarItemDidSelected:) forControlEvents:UIControlEventTouchUpInside];
    }
}

- (void)tabbarItemDidSelected:(LZBTabBarItem *)item
{
    if(![self.items containsObject:item]) return;
    
    NSInteger index = [self.items indexOfObject:item];
    if([self.delegate respondsToSelector:@selector(tabBar:shouldSelectItemAtIndex:)])
    {
        if(![self.delegate tabBar:self shouldSelectItemAtIndex:index])
            return;
    }
    self.currentSelectItem = item;
    if([self.delegate respondsToSelector:@selector(tabBar:didSelectItemAtIndex:)])
    {
        [self.delegate tabBar:self didSelectItemAtIndex:index];
    }
    
}

- (void)setCurrentSelectItem:(LZBTabBarItem *)currentSelectItem
{
     if(_currentSelectItem == currentSelectItem)
         return;
    _currentSelectItem = currentSelectItem;
    _currentSelectItem.selected = YES;
}

#pragma mark - lazy
- (UIView *)backgroundView
{
  if(_backgroundView == nil)
  {
      _backgroundView = [UIView new];
  }
    return _backgroundView;
}

- (UIView *)topLine
{
  if(_topLine == nil)
  {
      _topLine = [UIView new];
  }
    return _topLine;
}
@end

#pragma mark- LZBTabBarItem

@implementation LZBTabBarItem


@end
