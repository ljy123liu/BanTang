//
//  HomeBaseViewController.m
//  BanTang
//
//  Created by LIUYONG on 3/24/16.
//  Copyright © 2016 WanJianTechnology. All rights reserved.
//

#import "HomeBaseViewController.h"
#import "AppDelegate.h"
#import "UITabBarController+TabbarImage.h"
#import "UIViewController+CleanNavBarBottomLine.h"
#import "UIView+Extension.h"
@implementation HomeBaseViewController

- (void)loadView {
    [super loadView];
    [self cleanNavBarLine];
    [self.view setBackgroundColor:[UIColor whiteColor]];
    if ([self respondsToSelector:@selector(automaticallyAdjustsScrollViewInsets)]) {
        self.automaticallyAdjustsScrollViewInsets = NO;
    }
    
    if ([self.navigationController.viewControllers objectAtIndex:0] != self) {
        [self l_setBackBarButtom:nil];
    }
}

/**
 *  设置左边按钮
 *
 *  @return
 */
- (void)l_setLeftBarButtom:(UIImage *)image {
    self.navBarLeft = [UIButton new];
    [self.navBarLeft addTarget:self action:@selector(l_backAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.navBarLeft setImage:image forState:UIControlStateNormal];
    self.navBarLeft.size = image.size;
    UIBarButtonItem *button = [[UIBarButtonItem alloc] initWithCustomView:self.navBarLeft];
    UIBarButtonItem *fixed = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:nil action:nil];
    fixed.width = -15;
    self.navigationItem.leftBarButtonItems = @[fixed,button];
}

/**
 *  设置返回按钮
 */
- (void)l_setBackBarButtom:(UIImage *)image {
    self.navigationItem.hidesBackButton = YES;
    if (!image) {
        image = [[UIImage imageNamed:@"ic_back"] resizableImageWithCapInsets:UIEdgeInsetsMake(0, 0, 0, 0)];
        
    }
}

/**
 *  设置右边按钮
 *
 *  @return
 */
- (void)l_setRightBarButtom:(UIImage *)image {
    self.navBarRight = [UIButton new];
    [self.navBarRight addTarget:self action:@selector(l_backAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.navBarRight setImage:image forState:UIControlStateNormal];
    self.navBarRight.size = image.size;
    UIBarButtonItem *button = [[UIBarButtonItem alloc] initWithCustomView:self.navBarRight];
    UIBarButtonItem *fixed = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:nil action:nil];
    fixed.width = -15;
    self.navigationItem.leftBarButtonItems = @[fixed,button];
}

/**
 *  设置标题
 */
- (void)l_setTitle:(NSString *)text {
    self.navBarTitle = [UILabel new];
    if ([self.navigationController.viewControllers objectAtIndex:0] != self) {
        self.navBarTitle.font = [UIFont systemFontOfSize:18];
    } else {
        self.navBarTitle.font = [UIFont fontWithName:@"Futura-CondensedExtraBold" size:19];
    }
}

- (void)l_settabBarHidden:(BOOL)flag {
    UITabBarController *tabBarController = self.tabBarController;
    [UIView animateWithDuration:0.25 animations:^{
        [tabBarController newTabbar].hidden = flag;
    }];
}








































@end
