//
//  UIImageView+ImageSize.h
//  BanTang
//
//  Created by LIUYONG on 3/23/16.
//  Copyright © 2016 WanJianTechnology. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImageView (ImageSize)
/*
 *  获取UIImageView 中 image 的真实宽度
 *
 *  @return
 */
- (CGFloat)l_imageWidth;
/**
 *  获取UIImageView 中 image 的真实高度
 *
 *  @return
 */
- (CGFloat)l_imageHeight;
@end
