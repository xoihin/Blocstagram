//
//  Comment.h
//  Blocstagram
//
//  Created by Xoi's iMac on 2015-08-25.
//  Copyright (c) 2015 XoiAHin. All rights reserved.
//

#import <Foundation/Foundation.h>


@class User;


@interface Comment : NSObject <NSCoding>



@property (nonatomic, strong) NSString *idNumber;

@property (nonatomic, strong) User *from;
@property (nonatomic, strong) NSString *text;


- (instancetype) initWithDictionary:(NSDictionary *)commentDictionary;


@end
