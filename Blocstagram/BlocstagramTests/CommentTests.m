//
//  CommentTests.m
//  Blocstagram
//
//  Created by Xoi's iMac on 2015-09-17.
//  Copyright (c) 2015 XoiAHin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "ComposeCommentView.h"



@interface CommentTests : XCTestCase

@end



@implementation CommentTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}




- (void)testCommentWithText
{
    ComposeCommentView *myCommentWithText = [[ComposeCommentView alloc]init];
    myCommentWithText.text = @"how now brown cow";
    XCTAssertTrue(myCommentWithText.isWritingComment == YES, @"Test should return true.");
}




-(void)testCommentWithNoText
{
    ComposeCommentView *myCommentWithNoText = [ComposeCommentView new];
    XCTAssertTrue(myCommentWithNoText.isWritingComment == NO, @"Test should return true");
}




@end
