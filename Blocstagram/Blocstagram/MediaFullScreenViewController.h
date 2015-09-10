//
//  MediaFullScreenViewController.h
//  Blocstagram
//
//  Created by Xoi's iMac on 2015-08-31.
//  Copyright (c) 2015 XoiAHin. All rights reserved.
//

#import <UIKit/UIKit.h>


@class Media;

@interface MediaFullScreenViewController : UIViewController

@property (nonatomic, strong) UIScrollView *scrollView;
@property (nonatomic, strong) UIImageView *imageView;

@property (nonatomic, strong) Media *media;


- (instancetype) initWithMedia:(Media *)media;

- (void) centerScrollView;


- (void) recalculateZoomScale;



@end