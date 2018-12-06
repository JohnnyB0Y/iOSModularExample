//
//  HBHPageOneViewController.m
//  HomeBeeHivePod
//
//  Created by JohnnyB0Y on 2018/12/5.
//  Copyright © 2018 JohnnyB0Y. All rights reserved.
//

#import "HBHPageOneViewController.h"
#import <AGCategories/NSBundle+SupportCocoapods.h>

@interface HBHPageOneViewController ()
<HBHPageServiceProtocol>

@end

@implementation HBHPageOneViewController

- (void)loadView
{
    NSBundle *bundle = [NSBundle ag_cocoapodsBundleForClass:self.class];
    UINib *nib = [UINib nibWithNibName:NSStringFromClass(self.class) bundle:bundle];
    NSArray *views = [nib instantiateWithOwner:self options:nil];
    UIView *view = [views firstObject];
    self.view = view;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
}

#pragma mark - ---------- Public Methods ----------


#pragma mark - ----------- HBHHomeServiceProtocol ----------
- (void)doSomeThing
{
    NSLog(@"%@ doSomeThing", self.title);
}

- (void)doOneThing
{
    NSLog(@"%@ doOneThing", self.title);
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
