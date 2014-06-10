//
//  JENAppAssembly.m
//  HelloWorldApp
//
//  Created by Jorg on 10/06/2014.
//  Copyright (c) 2014 co.uk.jennius. All rights reserved.
//

#import "JENAppAssembly.h"
#import "JENHelloWorldViewController.h"

@implementation JENAppAssembly
- (id)uiAlert
{
    return [TyphoonDefinition withClass:[UIAlertView class] configuration:^(TyphoonDefinition* definition)
            {
                definition.scope = TyphoonScopePrototype;
            }];
}
- (id)helloWorldController
{
    return [TyphoonDefinition withClass:[JENHelloWorldViewController class]];
}
@end
