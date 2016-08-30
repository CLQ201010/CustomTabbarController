//
//  CLQTabbarModel.h
//  CustomTabbarController
//
//  Created by ccq chen on 16/8/29.
//  Copyright © 2016年 ccq chen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface CLQTabbarModel : NSObject

// 图片设置
@property (nonatomic, strong) UIImage *normalImg;
@property (nonatomic, strong) UIImage *highlightedImg;
@property (nonatomic, strong) UIImage *selectedImg;
@property (nonatomic, assign) CGFloat imgHeight;

// 文字设置
@property (nonatomic, copy) NSString *title;
@property (nonatomic, strong) UIFont *titleFont;
@property (nonatomic, strong) UIColor *normalTitleColor;
@property (nonatomic, strong) UIColor *highlightedTitleColor;
@property (nonatomic, strong) UIColor *selectedTitleColor;

// 间距
@property (nonatomic, assign) CGFloat textImgMargin;  //图文间距
@property (nonatomic, assign) CGFloat topMargin;   //图片距离顶部距离
@property (nonatomic, assign) CGFloat bottomMargin;  //文字距离顶部距离

@end
