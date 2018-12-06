//
//  ViewController.m
//  HomeModuleActionsPod
//
//  Created by JohnnyB0Y on 2018/12/5.
//  Copyright © 2018 JohnnyB0Y. All rights reserved.
//

#import "ViewController.h"
#import "Module/CTMediator+CTMediatorHomeActions.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIViewController *vc = [[CTMediator sharedInstance] CTMediator_homeViewController];
    vc.title = @"Home";
    if ( [vc isKindOfClass:[UIViewController class]] ) {
        [self addChildViewController:vc];
    }
    
}


@end
