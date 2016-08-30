//
//  ViewController.m
//  CustomTabbarController
//
//  Created by ccq chen on 16/8/29.
//  Copyright © 2016年 ccq chen. All rights reserved.
//

#import "CLQTabbarController.h"
#import "CLQTabbarModel.h"
#import "CLQTabbarButton.h"

@interface CLQTabbarController ()

@property (nonatomic, weak) CLQTabbarButton *selectedBtn;
@property (nonatomic, weak) UIImageView *tabbarBgImageView;
@property (nonatomic, strong) NSMutableArray *vcs;
@property (nonatomic, strong) NSMutableArray *tarbarModels;

@end

@implementation CLQTabbarController

- (instancetype)initWithControllers:(NSArray *)vcs tabbarModels:(NSArray *)models
{
    self = [self init];
    if (self) {
        _vcs = [[NSMutableArray alloc] initWithArray:vcs];
        _tarbarModels = [[NSMutableArray alloc] initWithArray:models];
        
        [self setupUI];
    }
    
    return self;
}

- (void)setupUI
{
    // 1.初始化界面数据
    self.viewControllers = _vcs;
    
    // 2.自定义工具栏背景颜色
    [self setupCustomView];
    
    // 3.自定义工具栏按钮
    [self setupCustomTabbar];
    
    // 4.自定义顶部边框
    [self setupTopLayer];
}

- (void)setupCustomView
{
    CGRect rect = self.tabBar.frame;
    [self.tabBar removeFromSuperview];
    
    UIImageView *tabbarBgImageView = [[UIImageView alloc] initWithFrame:rect];
    tabbarBgImageView.backgroundColor = [UIColor whiteColor];
    tabbarBgImageView.userInteractionEnabled = YES;
    [self.view addSubview:tabbarBgImageView];
    _tabbarBgImageView = tabbarBgImageView;
}

- (void)setupCustomTabbar
{
    for (int i = 0; i < _tarbarModels.count; i++) {
        CGFloat btnW = _tabbarBgImageView.frame.size.width / _tarbarModels.count;
        CGFloat btnH = _tabbarBgImageView.frame.size.height;
        CGFloat btnX = i * btnW;
        CGFloat btnY = 0;
        CLQTabbarButton *btn = [[CLQTabbarButton alloc] initWithFrame:CGRectMake(btnX, btnY, btnW, btnH)];
        [_tabbarBgImageView addSubview:btn];
        
        btn.tag = i;
        btn.tabbarModel = _tarbarModels[i];
        [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
        
        if (0 == i) {
            btn.selected = YES;
            self.selectedBtn = btn;  //设置该按钮为选中的按钮
        }
    }
}

- (void)setupTopLayer
{
    _topLayer = [[CALayer alloc] init];
    _topLayer.frame = CGRectMake(0, 0, _tabbarBgImageView.frame.size.width, 0.5f);
    _topLayer.backgroundColor = [UIColor blackColor].CGColor;
    [_tabbarBgImageView.layer addSublayer:_topLayer];
}

- (void)setTopLayer:(CALayer *)topLayer
{
    _topLayer = topLayer;
}

- (void)setCLQTabbarBackgroundImage:(UIImage *)bgImg
{
    [_tabbarBgImageView setImage:bgImg];
}

- (void)btnClick:(CLQTabbarButton *)button
{
    //1.先将之前选中的按钮设置为未选中
    self.selectedBtn.selected = NO;
    //2.再将当前按钮设置为选中
    button.selected = YES;
    //3.最后把当前按钮赋值为之前选中的按钮
    self.selectedBtn = button;
    
    //4.跳转到相应的视图控制器. (通过selectIndex参数来设置选中了那个控制器)
    self.selectedIndex = button.tag;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
