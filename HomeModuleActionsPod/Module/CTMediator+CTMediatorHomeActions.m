//
//  CTMediator+CTMediatorHomeActions.m
//  HomeModuleActionsPod
//
//  Created by JohnnyB0Y on 2018/12/5.
//  Copyright © 2018 JohnnyB0Y. All rights reserved.
//

#import "CTMediator+CTMediatorHomeActions.h"
#import <HomeTarget/Target_HomeViewController.h>

@implementation CTMediator (CTMediatorHomeActions)

- (UIViewController *) CTMediator_homeViewController
{
    return [[[Target_HomeViewController alloc] init] Action_viewController];
}

@end
