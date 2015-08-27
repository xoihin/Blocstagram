//
//  DataSource.h
//  Blocstagram
//
//  Created by Xoi's iMac on 2015-08-25.
//  Copyright (c) 2015 XoiAHin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataSource : NSObject


+(instancetype) sharedInstance;

@property (nonatomic, strong, readonly) NSArray *mediaItems;


@end