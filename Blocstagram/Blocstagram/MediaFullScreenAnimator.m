//
//  MediaFullScreenAnimator.m
//  Blocstagram
//
//  Created by Xoi's iMac on 2015-08-31.
//  Copyright (c) 2015 XoiAHin. All rights reserved.
//

#import "MediaFullScreenAnimator.h"
#import "MediaFullScreenViewController.h"




@implementation MediaFullScreenAnimator


- (NSTimeInterval)transitionDuration:(id <UIViewControllerContextTransitioning>)transitionContext {
    return 0.2;
}


- (void)animateTransition:(id <UIViewControllerContextTransitioning>)transitionContext {
    
    UIViewController *fromViewController = [transitionContext viewControllerForKey:UITransitionContextFromViewControllerKey]; // #10
    UIViewController *toViewController = [transitionContext viewControllerForKey:UITransitionContextToViewControllerKey]; // #11
    
    if (self.presenting) {
        MediaFullScreenViewController *fullScreenVC = (MediaFullScreenViewController *)toViewController; // #12
        
        fromViewController.view.userInteractionEnabled = NO; // #13
        
        [transitionContext.containerView addSubview:toViewController.view]; // #14
        
        CGRect startFrame = [transitionContext.containerView convertRect:self.cellImageView.bounds fromView:self.cellImageView]; // #15
        CGRect endFrame = fromViewController.view.frame; // #16
        
        toViewController.view.frame = startFrame;
        fullScreenVC.imageView.frame = toViewController.view.bounds;
        
        [UIView animateWithDuration:[self transitionDuration:transitionContext] animations:^{
            fromViewController.view.tintAdjustmentMode = UIViewTintAdjustmentModeDimmed;
            
            fullScreenVC.view.frame = endFrame;
            [fullScreenVC centerScrollView];
        } completion:^(BOOL finished) {
            [transitionContext completeTransition:YES];
        }];
        
    } else {
        MediaFullScreenViewController *fullScreenVC = (MediaFullScreenViewController *)fromViewController;
        
        CGRect endFrame = [transitionContext.containerView convertRect:self.cellImageView.bounds fromView:self.cellImageView];
        CGRect imageStartFrame = [fullScreenVC.view convertRect:fullScreenVC.imageView.frame fromView:fullScreenVC.scrollView];
        CGRect imageEndFrame = [transitionContext.containerView convertRect:endFrame toView:fullScreenVC.view];
        
        imageEndFrame.origin.y = 0;
        
        [fullScreenVC.view addSubview:fullScreenVC.imageView];
        fullScreenVC.imageView.frame = imageStartFrame;
        fullScreenVC.imageView.autoresizingMask = UIViewAutoresizingFlexibleBottomMargin;
        
        toViewController.view.userInteractionEnabled = YES;
        
        [UIView animateWithDuration:[self transitionDuration:transitionContext] animations:^{
            fullScreenVC.view.frame = endFrame;
            fullScreenVC.imageView.frame = imageEndFrame;
            
            toViewController.view.tintAdjustmentMode = UIViewTintAdjustmentModeAutomatic;
        } completion:^(BOOL finished) {
            [transitionContext completeTransition:YES];
        }];
    }
}




@end
