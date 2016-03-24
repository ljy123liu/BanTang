//
//  UINavigationBar+Transparent.h
//  BanTang
//
//  Created by LIUYONG on 3/23/16.
//  Copyright © 2016 WanJianTechnology. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UINavigationBar (Transparent)
- (void)l_setBackgroundColor:(UIColor *)backgroundColor;
- (void)l_setTranslantionY:(CGFloat)translationY;
- (void)l_setElementAlpha:(CGFloat)alpha;
- (void)l_reset;
@end
