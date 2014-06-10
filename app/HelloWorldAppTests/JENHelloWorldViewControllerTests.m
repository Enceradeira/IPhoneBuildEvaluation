//
//  JENHelloWorldViewControllerTests.m
//  HelloWorldApp
//
//  Created by Jorg on 09/06/2014.
//  Copyright (c) 2014 co.uk.jennius. All rights reserved.
//

#import <XCTest/XCTest.h>
#define HC_SHORTHAND
#import <OCHamcrest/OCHamcrest.h>

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
    assertThat(_controller, is(notNilValue()));
}

- (void)testController_ShouldHaveView
{
    assertThat(_controller.view, is(notNilValue()));
}

- (void)testController_ShouldDisplayClickButton
{
    XCTAssertNotNil(_controller.ClickMeButton);
    assertThat(_controller.ClickMeButton, is(notNilValue()));
}

- (void) testButtonClick_ShouldDisplayHelloWorldAlert{
     XCTFail(@"No implementation for \"%s\"", __PRETTY_FUNCTION__);
}


@end
