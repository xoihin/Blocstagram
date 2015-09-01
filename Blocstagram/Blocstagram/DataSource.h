//
//  DataSource.h
//  Blocstagram
//
//  Created by Xoi's iMac on 2015-08-25.
//  Copyright (c) 2015 XoiAHin. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Media;

@interface DataSource : NSObject


+(instancetype) sharedInstance;

@property (nonatomic, strong, readonly) NSArray *mediaItems;

- (void) deleteMediaItem:(Media *)item;


// Add a "Type" completion handler definition
typedef void (^NewItemCompletionBlock)(NSError *error);

- (void) requestNewItemsWithCompletionHandler:(NewItemCompletionBlock)completionHandler;

- (void) requestOldItemsWithCompletionHandler:(NewItemCompletionBlock)completionHandler;

// Assignment changes
- (void) downloadImageForMediaItem:(Media *)mediaItem;


// Connecting to Instagram
+ (NSString *) instagramClientID;

@property (nonatomic, strong, readonly) NSString *accessToken;



@end
