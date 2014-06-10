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
#import <Typhoon.h>

#import "JENHelloWorldViewController.h"
#import "JENAppAssemblyForTest.h"
#import "JENUIAlertViewSpy.h"

@interface JENHelloWorldViewControllerTests : XCTestCase
@end

@implementation JENHelloWorldViewControllerTests
{
    JENHelloWorldViewController* _controller;
    TyphoonComponentFactory* _factory;
    
}
- (void)setUp
{
    [super setUp];
    
    _factory = [[TyphoonBlockComponentFactory alloc] initWithAssemblies:@[[JENAppAssemblyForTest assembly]]];
    
    TyphoonStoryboard *storyboard = [TyphoonStoryboard storyboardWithName:@"Main" factory:_factory bundle:nil];
    
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
    assertThat(_controller.clickMeButton, is(notNilValue()));
}

- (void) testButtonClick_ShouldDisplayHelloWorldAlert
{
    UIButton* button = _controller.clickMeButton;
    JENUIAlertViewSpy* alertView = [_factory componentForType:[UIAlertView class]];
    
    [button sendActionsForControlEvents:UIControlEventTouchUpInside];
   
    assertThatBool(alertView.wasShowCalled, equalToBool(YES));
}


@end
