//
//  MediaFullScreenAnimator.h
//  Blocstagram
//
//  Created by Xoi's iMac on 2015-08-31.
//  Copyright (c) 2015 XoiAHin. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface MediaFullScreenAnimator : NSObject <UIViewControllerAnimatedTransitioning>

@property (nonatomic, assign) BOOL presenting;
@property (nonatomic, weak) UIImageView *cellImageView;


@end
