//
//  ImageLibraryViewController.h
//  Blocstagram
//
//  Created by Xoi's iMac on 2015-09-09.
//  Copyright (c) 2015 XoiAHin. All rights reserved.
//

#import <UIKit/UIKit.h>


@class ImageLibraryViewController;

@protocol ImageLibraryViewControllerDelegate <NSObject>

- (void) imageLibraryViewController:(ImageLibraryViewController *)imageLibraryViewController didCompleteWithImage:(UIImage *)image;

@end




@interface ImageLibraryViewController : UICollectionViewController


@property (nonatomic, weak) NSObject <ImageLibraryViewControllerDelegate> *delegate;


@end
