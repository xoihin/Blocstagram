//
//  MediaTableViewCell.h
//  Blocstagram
//
//  Created by Xoi's iMac on 2015-08-26.
//  Copyright (c) 2015 XoiAHin. All rights reserved.
//

#import <UIKit/UIKit.h>


@class Media, MediaTableViewCell, ComposeCommentView;

@protocol MediaTableViewCellDelegate <NSObject>

- (void) cell:(MediaTableViewCell *)cell didTapImageView:(UIImageView *)imageView;

- (void) cell:(MediaTableViewCell *)cell didLongPressImageView:(UIImageView *)imageView;

- (void) cellDidPressLikeButton:(MediaTableViewCell *)cell;


- (void) cellWillStartComposingComment:(MediaTableViewCell *)cell;
- (void) cell:(MediaTableViewCell *)cell didComposeComment:(NSString *)comment;



@end



@interface MediaTableViewCell : UITableViewCell

@property (nonatomic, strong) Media *mediaItem;

@property (nonatomic, strong, readonly) ComposeCommentView *commentView;


@property (nonatomic, strong) UITraitCollection *overrideTraitCollection;



//+ (CGFloat) heightForMediaItem:(Media *)mediaItem width:(CGFloat)width;
+ (CGFloat) heightForMediaItem:(Media *)mediaItem width:(CGFloat)width traitCollection:(UITraitCollection *) traitCollection;


- (void) stopComposingComment;


@property (nonatomic, weak) id <MediaTableViewCellDelegate> delegate;



@end
