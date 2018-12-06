//
//  ViewController.m
//  HomeCTMediatorPod
//
//  Created by JohnnyB0Y on 2018/12/5.
//  Copyright © 2018 JohnnyB0Y. All rights reserved.
//

#import "ViewController.h"
#import "Target_HomeViewController.h"
#import "Target_PageTwoViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Target_HomeViewController *th = [Target_HomeViewController new];
    Target_PageTwoViewController *tp = [Target_PageTwoViewController new];
    
    // home
    UIViewController *homeVC = [th Action_viewController];
    homeVC.title = @"Home";
    [self addChildViewController:homeVC];
    
    // PageTwo
    UIViewController *pageVC = [tp Action_viewController];
    pageVC.title = @"pageTwo";
    [self addChildViewController:pageVC];
}


@end
