//
//  ViewController.m
//  CTMediatorExample
//
//  Created by JohnnyB0Y on 2018/12/5.
//  Copyright © 2018 JohnnyB0Y. All rights reserved.
//

#import "ViewController.h"
#import <HomeActions/CTMediator+CTMediatorHomeActions.h>
#import <PageActions/CTMediator+CTMediatorPageActions.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIViewController *home = [[CTMediator sharedInstance] CTMediator_homeViewController];
    home.title = @"Home";
    [self addChildViewController:home];
    
    UIViewController *page = [[CTMediator sharedInstance] CTMediator_pageTwoViewController];
    page.title = @"PageTwo";
    [self addChildViewController:page];
    
    /**
     对CTMediator使用感受：
     
     - CTMediator 采用Target-Action的方式做组件化。
     在服务提供方工程中用Target_Class 组合服务。然后用CTMediator的 Category封装Target_Class 的使用。
     最终调用方只需要依赖CTMediator的分类就可以使用服务。
     为了完全解耦和管理代码，需要编写Target_Class 和CTMediator分类。
     Target_Class 做的事，类比到BeeHive 上就是实现Protocol 接口。
     CTMediator Category 做的事主要是屏蔽调用Target_Class 的复杂度，其次就是屏蔽对具体组件的感知，只管使用服务就好。
     
     我想这里需要权衡的就是工作量和降低维护成本的取舍了。
     
     - 还有一点就是 CTMediator太轻量级了，所以BeeHive的那些系统事件感知完全没有，需要自己处理。
     
     */
    
}


@end
