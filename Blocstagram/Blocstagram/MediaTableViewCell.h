//
//  MediaTableViewCell.h
//  Blocstagram
//
//  Created by Xoi's iMac on 2015-08-26.
//  Copyright (c) 2015 XoiAHin. All rights reserved.
//

#import <UIKit/UIKit.h>


@class Media;


@interface MediaTableViewCell : UITableViewCell

@property (nonatomic, strong) Media *mediaItem;


+ (CGFloat) heightForMediaItem:(Media *)mediaItem width:(CGFloat)width;




@end
