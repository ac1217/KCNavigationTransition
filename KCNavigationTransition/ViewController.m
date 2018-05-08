//
//  ViewController.m
//  KCNavigationTransition
//
//  Created by Erica on 2018/5/7.
//  Copyright © 2018年 Erica. All rights reserved.
//

#import "ViewController.h"
#import "UIViewController+KCTransition.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.title = @"1234";
    
//    [self.navigationController.navigationBar setBackgroundImage:[UIImage new] forBarMetrics:UIBarMetricsDefault];
    
    self.kc_navigationBarBackgroundAlpha = arc4random_uniform(2);
    
    self.view.backgroundColor = [UIColor whiteColor];
//    self.view.backgroundColor = [UIColor colorWithRed:arc4random_uniform(256)/255.0 green:arc4random_uniform(256)/255.0 blue:arc4random_uniform(256)/255.0 alpha:1];
    
    self.kc_navigationBarBackgroundColor = [UIColor colorWithRed:arc4random_uniform(256)/255.0 green:arc4random_uniform(256)/255.0 blue:arc4random_uniform(256)/255.0 alpha:1];
    
    self.kc_navigationBarTintColor = [UIColor colorWithRed:arc4random_uniform(256)/255.0 green:arc4random_uniform(256)/255.0 blue:arc4random_uniform(256)/255.0 alpha:1];
    
    UIBarButtonItem *push =  [[UIBarButtonItem alloc] initWithTitle:@"push" style:0 target:self action:@selector(push)];
    
    
    UIBarButtonItem *pop = [[UIBarButtonItem alloc] initWithTitle:@"pop" style:0 target:self action:@selector(pop)];
    
    
    UIBarButtonItem *popRoot = [[UIBarButtonItem alloc] initWithTitle:@"popRoot" style:0 target:self action:@selector(popRoot)];
    
    self.navigationItem.rightBarButtonItems = @[push, pop, popRoot];
    
}

- (void)popRoot
{
    [self.navigationController popToRootViewControllerAnimated:YES];
}


- (void)push
{
    
    [self.navigationController pushViewController:[[ViewController alloc] init] animated:YES];
}

- (void)pop
{
    [self.navigationController popViewControllerAnimated:YES];
}


@end
