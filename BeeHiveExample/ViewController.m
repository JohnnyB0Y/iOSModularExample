//
//  ViewController.m
//  BeeHiveExample
//
//  Created by JohnnyB0Y on 2018/12/5.
//  Copyright © 2018 JohnnyB0Y. All rights reserved.
//

#import "ViewController.h"
#import <HomeBeeHive/HBHHomeServiceProtocol.h>
#import <PageBeeHive/HBHPageServiceProtocol.h>
#import <BeeHive/BeeHive.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // 创建服务
    
    // PageOne
    id<HBHPageServiceProtocol> page = [[BeeHive shareInstance] createService:@protocol(HBHPageServiceProtocol)];
    if ( [page isKindOfClass:[UIViewController class]] ) {
        UIViewController *pageVC = (UIViewController *)page;
        pageVC.title = @"Page";
        [page doOneThing];
        [self addChildViewController: pageVC];
    }
    
    // Home
    id<HBHHomeServiceProtocol> home = [[BeeHive shareInstance] createService:@protocol(HBHHomeServiceProtocol)];
    if ( [home isKindOfClass:[UIViewController class]] ) {
        UIViewController *homeVC = (UIViewController *)home;
        homeVC.title = @"Home";
        [home doOneThing];
        [self addChildViewController: homeVC];
    }
    
    /**
     对于BeeHive使用感受：
     
     - 每个模块都配一个Module类，负责整个App生命周期的感知、处理系统事件和一些配置信息。
     因此每个Module都是在类方法 load中进行模块注册，要赶在App启动前做好准备。
     这样一来Module的数量太多必然对App启动时间有影响。
     
     因此我觉得BeeHive是针对大模块设计的，毕竟需要对App生命周期感知的模块是不多的吧。
     至于大多数很小的组件，例如自定义按钮、自定义视图、小工具是不太适合BeeHive了。
     
     
     - BeeHive集合和URL、Protocol、Target-Action，使用方式很灵活。
     看了一下评论区，据说Target-Action 几乎没什么人用，大部分使用的是 Protocol。
     大模块下服务必然不少，Protocol就有很多接口，如果要遵守接口隔离原则需要区分成各个小Protocol。
     这样一来取协议名又是个难题（我觉得编程很难的一部分就是取类名）。
     实现Protocol也要找到职责对应的类，一些服务是需要组合完成的话就会比较蛋疼。
     
     所以我想最后基于这么多麻烦事，最终反映到代码中应该就是一个全能的Protocol，里面各种类型的服务。
     然后在同一个类，一般是ViewController中实现所有的接口。
     
     */
}


@end
