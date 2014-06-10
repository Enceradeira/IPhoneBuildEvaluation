//
//  JENHelloWorldControllerViewController.m
//  HelloWorldApp
//
//  Created by Jorg on 09/06/2014.
//  Copyright (c) 2014 co.uk.jennius. All rights reserved.
//

#import "JENHelloWorldViewController.h"

@interface JENHelloWorldViewController ()

@end

@implementation JENHelloWorldViewController
{
    TyphoonComponentFactory* _factory;
}

- (void)typhoonSetFactory:(TyphoonComponentFactory *)factory
{
    _factory = factory;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onClickMeClicked:(id)sender
{
    UIAlertView* view = [_factory componentForType:[UIAlertView class]];
    view = [view initWithTitle:@"Hello world" message:nil delegate:nil cancelButtonTitle:nil otherButtonTitles:@"OK", nil];
    [view show];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
