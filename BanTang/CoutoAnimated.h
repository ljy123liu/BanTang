//
//  CoutoAnimated.h
//  BanTang
//
//  Created by LIUYONG on 3/25/16.
//  Copyright © 2016 WanJianTechnology. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@class CoutoAnimated;

typedef NS_ENUM(NSInteger,COUTOTYPE) {
    COUTOTYPEPUSH,//push/pop
    COUTOTYPEPRESENT//present
};

@protocol CoutoAnimatedProtocol <NSObject>
/**
 *  goto转场动画
 *  [containerView insertSubview:toViewController.view aboveSubview:fromViewController.view];
 *  [transitionContext completeTransition:YES];
 *
 *  @param transitionContext  过场上下文信息
 *  @param fromViewController <#fromViewController description#>
 *  @param toViewController   <#toViewController description#>
 *  @param containerView      <#containerView description#>
 *  @param duration           <#duration description#>
 */
- (void)coutoAnimatedGotoOtherTransition:(id<UIViewControllerContextTransitioning>)transitionContext
                      fromViewController:(UIViewController *)fromViewController
                        toViewController:(UIViewController *)toViewController
                           containerView:(UIView *)containerView
                                duration:(NSTimeInterval)duration;

/**
 *  diss转场动画（下面两句话由自己决定加在哪里）
 *  [containerView insertSubview:toViewController.view aboveSubview:fromViewController.view];
 *  [transitionContext completeTransition:YES];
 *
 *  @param transitionContext  <#transitionContext description#>
 *  @param fromViewController <#fromViewController description#>
 *  @param toViewController   <#toViewController description#>
 *  @param containerView      <#containerView description#>
 *  @param duration           <#duration description#>
 */
- (void)coutoAnimatedComebackTransition:(id<UIViewControllerContextTransitioning>)transitionContext
                      fromViewController:(UIViewController *)fromViewController
                        toViewController:(UIViewController *)toViewController
                           containerView:(UIView *)containerView
                                duration:(NSTimeInterval)duration;
@end

@interface CoutoAnimated : NSObject<UIViewControllerAnimatedTransitioning,UINavigationControllerDelegate>

- (instancetype)initWithDuration:(NSTimeInterval)duration coutoType:(COUTOTYPE)coutoType delegate:(id <CoutoAnimatedProtocol>)delegate;
/**
 *  是否是返回操作
 *  @return YES -> back, NO -> Push/Pop or Present
 */

- (BOOL)isComeback;






@end
