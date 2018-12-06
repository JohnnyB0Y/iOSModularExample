//
//  HBHHomeModule.m
//  HomeBeeHivePod
//
//  Created by JohnnyB0Y on 2018/12/5.
//  Copyright © 2018 JohnnyB0Y. All rights reserved.
//

#import "HBHHomeModule.h"
#import <BeeHive/BeeHive.h>
#import "HBHHomeViewController.h"

@interface HBHHomeModule ()
<BHModuleProtocol>


@end

@implementation HBHHomeModule

// 加载模块 并 设置是否异步加载
BH_EXPORT_MODULE(YES)

- (id) init {
    if ( self = [super init] ) {
        NSLog(@"HBHHomeModule init.");
    }
    return self;
}

- (NSUInteger)moduleLevel
{
    return 0;
}

- (void)modSetUp:(BHContext *)context
{
    // 注册模块服务
    [[BeeHive shareInstance] registerService:@protocol(HBHHomeServiceProtocol) service:[HBHHomeViewController class]];
    
    NSLog(@"HBHHomeModule setup.");
}

@end
