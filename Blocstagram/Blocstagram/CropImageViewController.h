//
//  CropImageViewController.h
//  Blocstagram
//
//  Created by Xoi's iMac on 2015-09-09.
//  Copyright (c) 2015 XoiAHin. All rights reserved.
//

#import "MediaFullScreenViewController.h"


@class CropImageViewController;

@protocol CropImageViewControllerDelegate <NSObject>

- (void) cropControllerFinishedWithImage:(UIImage *)croppedImage;

@end

@interface CropImageViewController : MediaFullScreenViewController

- (instancetype) initWithImage:(UIImage *)sourceImage;

@property (nonatomic, weak) NSObject <CropImageViewControllerDelegate> *delegate;



@end
