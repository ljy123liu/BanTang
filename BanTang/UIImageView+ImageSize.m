//
//  UIImageView+ImageSize.m
//  BanTang
//
//  Created by LIUYONG on 3/23/16.
//  Copyright © 2016 WanJianTechnology. All rights reserved.
//

#import "UIImageView+ImageSize.h"

@implementation UIImageView (ImageSize)
/*
 *  获取UIImageView 中 image 的真实宽度
 *
 *  @return
 */
- (CGFloat)l_imageWidth {
    return self.image != nil ? self.image.size.width : 0.f;
}

/**
 *  获取UIImageView 中 image 的真实高度
 *
 *  @return
 */
- (CGFloat)l_imageHeight {
    return self.image != nil ? self.image.size.height : 0.f;
}

@end
