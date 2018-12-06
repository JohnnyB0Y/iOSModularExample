//
//  NSBundle+SupportCocoapods.h
//  
//
//  Created by JohnnyB0Y on 2018/12/6.
//  Copyright © 2018 JohnnyB0Y. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSBundle (SupportCocoapods)

+ (NSBundle *) ag_cocoapodsBundleForClass:(Class)aClass;

@end

NS_ASSUME_NONNULL_END
