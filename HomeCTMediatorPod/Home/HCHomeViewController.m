//
//  HCHomeViewController.m
//  HomeCTMediatorPod
//
//  Created by JohnnyB0Y on 2018/12/5.
//  Copyright © 2018 JohnnyB0Y. All rights reserved.
//

#import "HCHomeViewController.h"
#import <AGCategories/NSBundle+SupportCocoapods.h>

@interface HCHomeViewController ()

@end

@implementation HCHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

+ (instancetype)viewController
{
    NSBundle *bundle = [NSBundle ag_cocoapodsBundleForClass:self];
    HCHomeViewController *vc = [[self alloc] initWithNibName:NSStringFromClass(self) bundle:bundle];
    return vc;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
