//
//  ViewController.m
//  PageModuleActionsPod
//
//  Created by JohnnyB0Y on 2018/12/5.
//  Copyright © 2018 JohnnyB0Y. All rights reserved.
//

#import "ViewController.h"
#import "Module/CTMediator+CTMediatorPageActions.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIViewController *vc = [[CTMediator sharedInstance] CTMediator_pageTwoViewController];
    vc.title = @"PageTwo";
    [self addChildViewController:vc];
}


@end
