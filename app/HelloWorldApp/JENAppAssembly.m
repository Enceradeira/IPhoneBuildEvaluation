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
    return nil;
}
- (id)helloWorldController
{
   return [TyphoonDefinition withClass:[JENHelloWorldViewController class]];
}
@end
