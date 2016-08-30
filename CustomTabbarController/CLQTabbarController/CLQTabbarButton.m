//
//  CLQTabbarButton.m
//  CustomTabbarController
//
//  Created by ccq chen on 16/8/29.
//  Copyright © 2016年 ccq chen. All rights reserved.
//

#import "CLQTabbarButton.h"
#import "CLQTabbarModel.h"
#import "SDAutoLayout.h"

@implementation CLQTabbarButton

- (void)setTabbarModel:(CLQTabbarModel *)tabbarModel
{
    _tabbarModel = tabbarModel;
    
    self.titleLabel.textAlignment = NSTextAlignmentCenter;
    self.imageView.contentMode = UIViewContentModeScaleAspectFit;
    
    [self setTitle:tabbarModel.title forState:UIControlStateNormal];
    [self setTitleColor:tabbarModel.normalTitleColor forState:UIControlStateNormal];
    [self setTitleColor:tabbarModel.highlightedTitleColor forState:UIControlStateHighlighted];
    [self setTitleColor:tabbarModel.selectedTitleColor forState:UIControlStateSelected];
    self.titleLabel.font = tabbarModel.titleFont;
    
    [self setImage:tabbarModel.normalImg forState:UIControlStateNormal];
    [self setImage:tabbarModel.highlightedImg forState:UIControlStateHighlighted];
    [self setImage:tabbarModel.selectedImg forState:UIControlStateSelected];
    
    [self setupLayout];
}

- (void)setupLayout
{
    // 1.图片布局
    self.imageView.sd_layout
    .topSpaceToView(self, _tabbarModel.topMargin)
    .heightIs(_tabbarModel.imgHeight)
    .widthRatioToView(self, 1.0)
    .centerXEqualToView(self);
    
    // 2.文字布局
    self.titleLabel.sd_layout
    .topSpaceToView(self.imageView,_tabbarModel.textImgMargin)
    .bottomSpaceToView(self, _tabbarModel.bottomMargin)
    .widthRatioToView(self, 1.0)
    .centerXEqualToView(self);
}

@end
