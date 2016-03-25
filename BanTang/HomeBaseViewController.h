//
//  HomeBaseViewController.h
//  BanTang
//
//  Created by LIUYONG on 3/24/16.
//  Copyright © 2016 WanJianTechnology. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HomeBaseViewController : UIViewController
@property (nonatomic, strong) UIButton *navBarLeft;
@property (nonatomic, strong) UIButton *navBarBack;
@property (nonatomic, strong) UIButton *navBarRight;
@property (nonatomic, strong) UILabel *navBarTitle;

/**
 *  设置左边按钮
 *
 *  @param image
 */
- (void)l_setLeftBarButtom:(UIImage *)image;
- (void)l_leftAction:(UIButton *)button;
/**
 *  设置返回按钮
 *
 *  @param image
 */
- (void)l_setBackBarButtom:(UIImage *)image;
- (void)l_backAction:(UIButton *)button;
/**
 *  设置右边按钮
 *
 *  @param image
 */
- (void)l_setRightBarButtom:(UIImage *)image;
- (void)l_rightAction:(UIButton *)button;
/**
 *  设置标题
 *
 *  @param text
 */
- (void)l_setTitle:(NSString *)text;
- (void)l_settabBarHidden:(BOOL)flag;

@end
