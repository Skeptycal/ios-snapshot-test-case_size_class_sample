//
//  TestTests.m
//  TestTests
//
//  Created by Martin Stemmle on 15/06/15.
//  Copyright (c) 2015 Tapglue. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import <FBSnapshotTestCase/FBSnapshotTestCase.h>

#define FB_REFERENCE_IMAGE_DIR "/Users/marste/Library/Desktop/ReferenceImages-Test"

@interface TestTests : FBSnapshotTestCase

@end

@implementation TestTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    self.recordMode = YES;
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    
    UIView *sampleView = [[NSBundle mainBundle] loadNibNamed:@"View" owner:self options:nil].firstObject;
    
    FBSnapshotVerifyView(sampleView, nil);
}


@end
