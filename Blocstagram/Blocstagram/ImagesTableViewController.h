//
//  ImagesTableViewController.h
//  Blocstagram
//
//  Created by Xoi's iMac on 2015-08-25.
//  Copyright (c) 2015 XoiAHin. All rights reserved.
//

#import <UIKit/UIKit.h>


@class Media;

@interface ImagesTableViewController : UITableViewController

+ (void)shareMediaItem:(Media *)mediaItem fromViewController:(UIViewController *)myViewController;

@end
