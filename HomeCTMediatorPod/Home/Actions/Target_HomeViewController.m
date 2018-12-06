//
//  Target_HomeViewController.m
//  HomeCTMediatorPod
//
//  Created by JohnnyB0Y on 2018/12/5.
//  Copyright © 2018 JohnnyB0Y. All rights reserved.
//

#import "Target_HomeViewController.h"
#import "HCHomeViewController.h"

@implementation Target_HomeViewController

- (UIViewController *)Action_viewController
{
    HCHomeViewController *home = [HCHomeViewController viewController];
    return home;
}

- (void)Action_printParams:(NSDictionary *)params
{
    NSLog(@"%@", params);
}

@end
