//
//  MediaTableViewCellTests.m
//  Blocstagram
//
//  Created by Xoi's iMac on 2015-09-17.
//  Copyright (c) 2015 XoiAHin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "MediaTableViewCell.h"
#import "Media.h"



@interface MediaTableViewCellTests : XCTestCase
{
    NSDictionary *mySourceDictionary;
}


@end

@implementation MediaTableViewCellTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
    mySourceDictionary = @{@"id": @"8675309",
                           @"user" : @{@"id": @"8675309",
                                       @"username" : @"d'oh",
                                       @"full_name" : @"Homer Simpson",
                                       @"profile_picture" : @"http://www.example.com/example.jpg"},
                           @"images" : @{@"standard_resolution" : @{@"url" : @"http://www.example.com/example.jpg"}},
                           @"caption" : @{@"text" : @"this is a caption"},
                           @"comments" : @{},
                           @"user_has_liked" : @"true",
                           @"likes" : @{@"count" : @10}};
    
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}




- (void)testImageHeight {
    
    Media *myMedia = [[Media alloc] initWithDictionary:mySourceDictionary];
    myMedia.image = [UIImage imageNamed:@"1.jpg"];
    
    CGFloat myReturnImageHeight = [MediaTableViewCell heightForMediaItem:myMedia width:[UIScreen mainScreen].bounds.size.width traitCollection:[UIScreen mainScreen].traitCollection];
    
    CGFloat myImageHeight = myMedia.image.size.height;
    NSLog(@"Image height is %f, height returned is %f", myImageHeight, myReturnImageHeight);

    XCTAssertNotEqual(myReturnImageHeight, myMedia.image.size.height, @"the height should not be equal");
}



- (void)testImageHeight2 {
    
    Media *myMedia = [[Media alloc] initWithDictionary:mySourceDictionary];
    myMedia.image = [UIImage imageNamed:@"2.jpg"];
    
    CGFloat myReturnImageHeight = [MediaTableViewCell heightForMediaItem:myMedia width:[UIScreen mainScreen].bounds.size.width traitCollection:[UIScreen mainScreen].traitCollection];
    
    CGFloat myImageHeight = myMedia.image.size.height;
    NSLog(@"Image height is %f, height returned is %f", myImageHeight, myReturnImageHeight);
    
    XCTAssertNotEqual(myReturnImageHeight, myMedia.image.size.height, @"the height should not be equal");
}


- (void)testImageHeight3 {
    
    Media *myMedia = [[Media alloc] initWithDictionary:mySourceDictionary];
    myMedia.image = [UIImage imageNamed:@"9.jpg"];
    
    CGFloat myReturnImageHeight = [MediaTableViewCell heightForMediaItem:myMedia width:[UIScreen mainScreen].bounds.size.width traitCollection:[UIScreen mainScreen].traitCollection];
    
    CGFloat myImageHeight = myMedia.image.size.height;
    NSLog(@"Image height is %f, height returned is %f", myImageHeight, myReturnImageHeight);
    
    XCTAssertNotEqual(myReturnImageHeight, myMedia.image.size.height, @"the height should not be equal");
}


@end
