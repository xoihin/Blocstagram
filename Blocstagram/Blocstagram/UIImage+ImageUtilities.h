//
//  UIImage+ImageUtilities.h
//  Blocstagram
//
//  Created by Xoi's iMac on 2015-09-07.
//  Copyright (c) 2015 XoiAHin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (ImageUtilities)


- (UIImage *) imageWithFixedOrientation;
- (UIImage *) imageResizedToMatchAspectRatioOfSize:(CGSize)size;
- (UIImage *) imageCroppedToRect:(CGRect)cropRect;


@end
