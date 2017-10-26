//
//  ViewController.m
//  test2
//
//  Created by boai on 2017/10/26.
//  Copyright © 2017年 BAHome. All rights reserved.
//

#import "ViewController.h"
#import "BViewController.h"
#import "CViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    NSLog(@"%@ == %s", NSStringFromClass([self class]), __func__);
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    NSLog(@"%@ == %s", NSStringFromClass([self class]), __func__);
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    
    NSLog(@"%@ == %s", NSStringFromClass([self class]), __func__);
}

- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
    
    NSLog(@"%@ == %s", NSStringFromClass([self class]), __func__);
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.title = @"A VC";
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    // A push B
//    [self.navigationController pushViewController:[BViewController new] animated:YES];
    // A present C
    [self presentViewController:[CViewController new] animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
