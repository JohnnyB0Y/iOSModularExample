//
//  HBHPageModule.m
//  HomeBeeHivePod
//
//  Created by JohnnyB0Y on 2018/12/5.
//  Copyright © 2018 JohnnyB0Y. All rights reserved.
//

#import "HBHPageModule.h"
#import <BeeHive/BeeHive.h>
#import "HBHPageOneViewController.h"

@interface HBHPageModule ()
<BHModuleProtocol>


@end

@implementation HBHPageModule

+ (void)load
{
    // 加载模块
    [BeeHive registerDynamicModule:[self class]];
}

- (id) init {
    if ( self = [super init] ) {
        NSLog(@"HBHPageModule init.");
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
    [[BeeHive shareInstance] registerService:@protocol(HBHPageServiceProtocol) service:[HBHPageOneViewController class]];
    
    [BHServiceManager sharedManager];
    
    NSLog(@"HBHPageModule setup.");
}

@end
