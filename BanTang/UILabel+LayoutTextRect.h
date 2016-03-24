//
//  UILabel+LayoutTextRect.h
//  BanTang
//
//  Created by LIUYONG on 3/23/16.
//  Copyright © 2016 WanJianTechnology. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (LayoutTextRect)
/**
 *  根据给定的大小，算出实际大小
 *
 *  @param size size 自定的大小
 *
 *  @return 实际占用的大小
 */
- (CGSize)l_boundingRectWithSize:(CGSize)size;

/**
 *  覆盖自带的sizeThatFits: 重写，使其有直接为view赋值size的特性
 *
 *  @param size 最大的空间
 *
 *  @return 实际占用的大小
 */
- (CGSize)l_sizeThatFits:(CGSize)size;
@end
