//
//  NSBundle+SupportCocoapods.m
//
//
//  Created by JohnnyB0Y on 2018/12/6.
//  Copyright © 2018 JohnnyB0Y. All rights reserved.
//

#import "NSBundle+SupportCocoapods.h"

@implementation NSBundle (SupportCocoapods)

+ (NSBundle *) ag_cocoapodsBundleForClass:(Class)aClass
{
    NSBundle *bundle = [NSBundle bundleForClass:aClass];
    NSURL *url = [bundle URLForResource:@"ResourceFramework" withExtension:@"bundle"];
    
    if ( url == nil ) {
        url = [bundle URLForResource:@"MyLibrary" withExtension:@"bundle"];
    }
    
    if ( url ) {
        bundle = [NSBundle bundleWithURL:url];
    }
    return bundle;
}

@end
