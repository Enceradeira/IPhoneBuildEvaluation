//
//  JENHelloWorldViewControllerTests.m
//  HelloWorldApp
//
//  Created by Jorg on 09/06/2014.
//  Copyright (c) 2014 co.uk.jennius. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "JENHelloWorldViewController.h"

@interface JENHelloWorldViewControllerTests : XCTestCase
@end

@implementation JENHelloWorldViewControllerTests
{
    JENHelloWorldViewController* _controller;
}
- (void)setUp
{
    [super setUp];
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    _controller = [storyboard instantiateViewControllerWithIdentifier:@"HelloWorldController"];
    [_controller performSelectorOnMainThread:@selector(loadView) withObject:nil waitUntilDone:YES];
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testStoryboard_ShouldLoadController
{
    XCTAssertNotNil(_controller);
}

- (void)testController_ShouldHaveView
{
    XCTAssertNotNil(_controller);
}

- (void)testController_ShouldDisplayClickButton
{
    XCTAssertNotNil(_controller.ClickMeButton);
}

- (void) testButtonClick_ShouldDisplayHelloWorldAlert{
     XCTFail(@"No implementation for \"%s\"", __PRETTY_FUNCTION__);
}


@end
