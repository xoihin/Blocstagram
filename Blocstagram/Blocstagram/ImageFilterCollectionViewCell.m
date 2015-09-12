//
//  ImageFilterCollectionViewCell.m
//  Blocstagram
//
//  Created by Xoi's iMac on 2015-09-12.
//  Copyright (c) 2015 XoiAHin. All rights reserved.
//

#import "ImageFilterCollectionViewCell.h"



@implementation ImageFilterCollectionViewCell


- (id)initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    
    if (self) {
        
        UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc] init];
        flowLayout.itemSize = CGSizeMake(44, 64);
        flowLayout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
        flowLayout.minimumInteritemSpacing = 10;
        flowLayout.minimumLineSpacing = 10;
        
        CGFloat thumbnailEdgeSize = flowLayout.itemSize.width;
        self.myThumbnail = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, thumbnailEdgeSize, thumbnailEdgeSize)];
        self.myThumbnail.contentMode = UIViewContentModeScaleAspectFill;
        self.myThumbnail.clipsToBounds = YES;
        [self.contentView addSubview:self.myThumbnail];
        
        self.myLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, thumbnailEdgeSize, thumbnailEdgeSize, 20)];
        self.myLabel.textAlignment = NSTextAlignmentCenter;
        self.myLabel.font = [UIFont fontWithName:@"HelveticaNeue-Medium" size:10];
        [self.contentView addSubview:self.myLabel];
        
    }
    return self;
}



@end
