//
//  UIViewController+CleanNavBarBottomLine.m
//  BanTang
//
//  Created by LIUYONG on 3/24/16.
//  Copyright © 2016 WanJianTechnology. All rights reserved.
//

#import "UIViewController+CleanNavBarBottomLine.h"

@implementation UIViewController (CleanNavBarBottomLine)

- (void)cleanNavBarLine {
    
    if ([self.navigationController.navigationBar respondsToSelector:@selector(setBackgroundImage:forBarMetrics:)]) {
        NSArray *list = self.navigationController.navigationBar.subviews;
        
        for (id obj in list) {
            if ([obj isKindOfClass:[UIImageView class]]) {
                
                UIImageView *imageView = (UIImageView *)obj;
                NSArray *list2 = imageView.subviews;
                
                for (id obj2 in list2) {
                    
                    if ([obj2 isKindOfClass:[UIImageView class]]) {
                        
                        UIImageView *imageView2 = (UIImageView *)obj2;
                        imageView2.hidden = YES;
                    }
                }
            }
        }
    }
    self.navigationController.navigationBar.layer.shadowColor = [UIColor clearColor].CGColor;
}
@end
