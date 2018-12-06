//
//  HBHomeViewController.m
//  HomeBeeHivePod
//
//  Created by JohnnyB0Y on 2018/12/5.
//  Copyright © 2018 JohnnyB0Y. All rights reserved.
//

#import "HBHHomeViewController.h"

@interface HBHHomeViewController ()

/** label */
@property (nonatomic, strong) UILabel *label;

@end

@implementation HBHHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self.view addSubview:self.label];
    self.label.text = @"我是Home，来自BeeHivePod";
}

- (void)viewWillLayoutSubviews
{
    [super viewWillLayoutSubviews];
    
    self.label.bounds = CGRectMake(0, 0, 200, 80);
    self.label.center = CGPointMake(self.view.bounds.size.width / 2., self.view.bounds.size.height / 2.);
}

#pragma mark - ----------- HBHHomeServiceProtocol ----------
- (void)doSomeThing
{
    NSLog(@"%@ doSomeThing", self.title);
}

- (void)doOneThing
{
    NSLog(@"%@ doOneThing", self.title);
}

#pragma mark - ----------- Getter Methods ----------
- (UILabel *)label
{
    if (_label == nil) {
        _label = [UILabel new];
        _label.textAlignment = NSTextAlignmentCenter;
        _label.numberOfLines = 0;
    }
    return _label;
}

@end
