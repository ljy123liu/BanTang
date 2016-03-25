//
//  CoutoAnimated.m
//  BanTang
//
//  Created by LIUYONG on 3/25/16.
//  Copyright © 2016 WanJianTechnology. All rights reserved.
//

#import "CoutoAnimated.h"
@interface CoutoAnimated ()

@property (nonatomic, strong) UIViewController *fromeViewController;
@property (nonatomic, strong) UIViewController *toViewController;
@property (nonatomic, strong) UIView *containerView;
@property (nonatomic, weak) id <CoutoAnimatedProtocol> delegate;
@property (nonatomic, assign) NSTimeInterval duration;
@property (nonatomic, assign) COUTOTYPE coutoType;

@end

@implementation CoutoAnimated

-(instancetype)initWithDuration:(NSTimeInterval)duration coutoType:(COUTOTYPE)coutoType delegate:(id<CoutoAnimatedProtocol>)delegate {
    if (self = [super init]) {
        self.duration = duration;
        self.coutoType = coutoType;
        self.delegate = delegate;
    }
    return self;
}

#pragma mark UINavigationControllerDelegate Methods
/**
 *  Push/Pop自定义转场的代理
 *
 *  @param navigationController 导航
 *  @param operation            Push/Pop/None,可以用来控制在哪种导航的操作下使用自定义过场
 *  @param fromVC               <#fromVC description#>
 *  @param toVC                 <#toVC description#>
 *
 *  @return <#return value description#>
 */
-(id <UIViewControllerAnimatedTransitioning>)navigationController:(UINavigationController *)navigationController
                                 animationControllerForOperation:(UINavigationControllerOperation)operation
                                              fromViewController:(UIViewController *)fromVC
                                                toViewController:(UIViewController *)toVC {
    return self;//返回self表示代理由类本身实现
}

/**
 *  Present：自定义转场的代理
 *
 *  @param presented    被Present的UIViewController
 *  @param presenting   正在执行Present的UIViewController
 *  @param source       发起Present的UIViewController（PS：正在执行Present和发起Present的UIViewController是有区别的，
                        如果source是某个UINavigationController下的一个UIViewController，
                        那么presenting就是这个UINavigationController，如果source不是在类似UINavigationController或者
                        UITabbarController这样的控件内，那么presenting就是source本身
 *
 *  @return <#return value description#>
 */
- (id <UIViewControllerAnimatedTransitioning>)animationControllerForPresentedController:(UIViewController *)presented
                                                                   presentingController:(UIViewController *)presenting
                                                                       sourceController:(UIViewController *)source {
    return self;
}

/**
 *  Dismiss时自定义转场的代理
 *
 *  @param dismissed 被
 *
 *  @return <#return value description#>
 */
-(id <UIViewControllerAnimatedTransitioning>)animationControllerForDismissedController:(UIViewController *)dismissed {
    return self;
}

#pragma mark - UIViewControllerContextTransitoning

// 实现具体自定义转场动画效果的代理，这个代理也是实现动画效果的核心
- (void)animateTransition:(id<UIViewControllerContextTransitioning>)transitionContext {
    
    self.fromeViewController = [transitionContext viewControllerForKey:UITransitionContextFromViewControllerKey];
    self.toViewController = [transitionContext viewControllerForKey:UITransitionContextFromViewControllerKey];
    self.containerView = [transitionContext containerView];
    
    if ([self isComeback]) {
        if ([self.delegate conformsToProtocol:@protocol(CoutoAnimatedProtocol)] && [self.delegate respondsToSelector:@selector(coutoAnimatedGotoOtherTransition:fromViewController:toViewController:containerView:duration:)]) {
            [self.delegate coutoAnimatedGotoOtherTransition:transitionContext
                                         fromViewController:self.fromeViewController
                                           toViewController:self.toViewController
                                              containerView:self.containerView
                                                   duration:self.duration];
        }
    }
}

/**
 *  转场动画时间的代理
 *
 *  @param transitionContext 转场时的上下文信息
 *
 *  @return
 */
- (NSTimeInterval)transitionDuration:(id<UIViewControllerContextTransitioning>)transitionContext {
    return self.duration;
}

/**
 *  是否是返回操作
 *
 *  @return <#return value description#>
 */
- (BOOL)isComeback {
    return (self.fromeViewController == (UIViewController *)self.delegate) ? YES : NO;
}























@end
