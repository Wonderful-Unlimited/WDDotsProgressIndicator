//
//  ViewController.m
//  test1111111
//
//  Created by Wonder on 14/12/2.
//  Copyright (c) 2014年 Yin Xiaoyu. All rights reserved.
//

#import "ViewController.h"
#import "WDDotsProgressIndicator.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    WDDotsProgressIndicator *dot = [[WDDotsProgressIndicator alloc] init];
    dot.center = self.view.center;
    dot.backgroundColor = [UIColor colorWithRed:0.537 green:1.000 blue:0.841 alpha:1.000];
    dot.font = [UIFont systemFontOfSize:50];
    dot.interval = 0.5;
    dot.numbersOfDots = 5;
    [dot startAnimating];
    [self.view addSubview:dot];
//    [NSTimer scheduledTimerWithTimeInterval:10 target:dot selector:@selector(stopAnimating) userInfo:nil repeats:NO];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
