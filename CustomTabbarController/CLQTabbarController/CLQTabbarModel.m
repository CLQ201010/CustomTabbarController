//
//  CLQTabbarModel.m
//  CustomTabbarController
//
//  Created by ccq chen on 16/8/29.
//  Copyright © 2016年 ccq chen. All rights reserved.
//

#import "CLQTabbarModel.h"

@implementation CLQTabbarModel

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self setupData];
    }
    
    return self;
}

- (void)setupData
{
    self.title = nil;
    self.titleFont = [UIFont systemFontOfSize:8];
    self.normalTitleColor = [UIColor lightGrayColor];
    self.highlightedTitleColor = [UIColor lightGrayColor];
    self.selectedTitleColor = [UIColor lightGrayColor];
    self.titleHeight = 10;
    
    self.normalImg = nil;
    self.highlightedImg = nil;
    self.selectedImg = nil;
    self.imgHeight = 25;
    
    self.topMargin = 8;
    self.bottomMargin = 3;
}

@end
