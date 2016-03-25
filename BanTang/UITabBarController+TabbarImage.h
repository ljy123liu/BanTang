//
//  UITabBarController+TabbarImage.h
//  BanTang
//
//  Created by LIUYONG on 3/24/16.
//  Copyright © 2016 WanJianTechnology. All rights reserved.
//

#import <UIKit/UIKit.h>
#define OPENPHOTO @"OpenPhotoNotification"
@interface UITabBarController (TabbarImage)
- (void)initTabBarItemWithBarDictionary:(NSDictionary *)dict;
- (UIView *)newTabbar;
@end
