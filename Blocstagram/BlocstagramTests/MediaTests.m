//
//  MediaTests.m
//  Blocstagram
//
//  Created by Xoi's iMac on 2015-09-17.
//  Copyright (c) 2015 XoiAHin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "Media.h"
#import "User.h"



@interface MediaTests : XCTestCase

@end



@implementation MediaTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}


- (void)testThatInitializationWorks
{
    // Define dictionary
    NSDictionary *mySourceDictionary = @{@"id": @"8675309",
                                       @"user" : @{@"id": @"8675309",
                                                   @"username" : @"d'oh",
                                                   @"full_name" : @"Jane Doe",
                                                   @"profile_picture" : @"http://www.example.com/example.jpg"},
                                       @"images" : @{@"standard_resolution" : @{@"url" : @"http://www.example.com/example.jpg"}},
                                       @"caption" : @{@"text" : @"this is a caption"},
                                       @"comments" : @{@"data" : @[@{@"text" : @"first comment"}, @{@"text" : @"second comment"}, @{@"text" : @"third comment"}]},
                                       @"user_has_liked" : @"false",
                                       @"likes" : @{@"count" : @20}};
    
    Media *myTestMedia = [[Media alloc] initWithDictionary:mySourceDictionary];
    
    XCTAssertEqualObjects(myTestMedia.idNumber, mySourceDictionary[@"id"], @"The ID number should be equal");
    XCTAssertEqualObjects(myTestMedia.user.idNumber, mySourceDictionary[@"user"][@"id"], @"The user id should be equal");
    XCTAssertEqualObjects(myTestMedia.user.userName, mySourceDictionary[@"user"][@"username"], @"The username should be equal");
    XCTAssertEqualObjects(myTestMedia.user.fullName, mySourceDictionary[@"user"][@"full_name"], @"The user full name should be equal");
    XCTAssertEqualObjects(myTestMedia.user.profilePictureURL.absoluteString, mySourceDictionary[@"user"][@"profile_picture"], @"The user profile picture should be equal");
    XCTAssertEqualObjects(myTestMedia.mediaURL.absoluteString, mySourceDictionary[@"images"][@"standard_resolution"][@"url"], @"The image url should match");
    XCTAssertEqualObjects(myTestMedia.caption, mySourceDictionary[@"caption"][@"text"], @"The caption text should be equal");
    
}



@end
