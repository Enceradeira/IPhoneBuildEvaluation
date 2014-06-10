//
//  JENUIAlertViewSpy.m
//  HelloWorldApp
//
//  Created by Jorg on 10/06/2014.
//  Copyright (c) 2014 co.uk.jennius. All rights reserved.
//

#import "JENUIAlertViewSpy.h"

@implementation JENUIAlertViewSpy

- (void)show
{
    [super show];
    _wasShowCalled = YES;
}

@end
