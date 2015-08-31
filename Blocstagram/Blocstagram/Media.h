//
//  Media.h
//  Blocstagram
//
//  Created by Xoi's iMac on 2015-08-25.
//  Copyright (c) 2015 XoiAHin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class User;

@interface Media : NSObject <NSCoding>


@property (nonatomic, strong) NSString *idNumber;
@property (nonatomic, strong) User *user;
@property (nonatomic, strong) NSURL *mediaURL;
@property (nonatomic, strong) UIImage *image;
@property (nonatomic, strong) NSString *caption;
@property (nonatomic, strong) NSArray *comments;


- (instancetype) initWithDictionary:(NSDictionary *)mediaDictionary;


@end
