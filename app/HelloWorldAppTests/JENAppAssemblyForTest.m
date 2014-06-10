//
//  JENAppAssemblyForTest.m
//  HelloWorldApp
//
//  Created by Jorg on 10/06/2014.
//  Copyright (c) 2014 co.uk.jennius. All rights reserved.
//

#import "JENAppAssemblyForTest.h"
#import "JENHelloWorldViewController.h"
#import "JENUIAlertViewSpy.h"


@implementation JENAppAssemblyForTest
- (id) uiAlert
{
    return [TyphoonDefinition withClass:[JENUIAlertViewSpy class] configuration:^(TyphoonDefinition* definition){
        definition.scope = TyphoonScopeWeakSingleton;
            }];
}

- (id) helloWorldController
{
    return [TyphoonDefinition withClass:[JENHelloWorldViewController class]];
}
@end
