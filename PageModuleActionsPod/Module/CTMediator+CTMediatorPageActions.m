//
//  CTMediator+CTMediatorPageActions.m
//  PageModuleActionsPod
//
//  Created by JohnnyB0Y on 2018/12/5.
//  Copyright © 2018 JohnnyB0Y. All rights reserved.
//

#import "CTMediator+CTMediatorPageActions.h"
#import <PageTarget/Target_PageTwoViewController.h>

@implementation CTMediator (CTMediatorPageActions)

- (UIViewController *)CTMediator_pageTwoViewController
{
    return [[[Target_PageTwoViewController alloc] init] Action_viewController];
}

@end
