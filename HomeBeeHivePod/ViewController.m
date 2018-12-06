//
//  ViewController.m
//  HomeBeeHivePod
//
//  Created by JohnnyB0Y on 2018/12/5.
//  Copyright © 2018 JohnnyB0Y. All rights reserved.
//

#import "ViewController.h"
#import "Home/HBHHomeServiceProtocol.h"
#import "HBHPageOneViewController.h"
#import <BeeHive/BeeHive.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 创建服务
    id<HBHHomeServiceProtocol> home = [[BeeHive shareInstance] createService:@protocol(HBHHomeServiceProtocol)];
    if ( [home isKindOfClass:[UIViewController class]] ) {
        UIViewController *homeVC = (UIViewController *)home;
        homeVC.title = @"Home";
        [self addChildViewController: homeVC];
    }
    
    id<HBHPageServiceProtocol> page = [[BeeHive shareInstance] createService:@protocol(HBHPageServiceProtocol)];
    if ( [page isKindOfClass:[UIViewController class]] ) {
        UIViewController *pageVC = (UIViewController *)page;
        pageVC.title = @"Page";
        [page doOneThing];
        [self addChildViewController: pageVC];
    }
}


@end
