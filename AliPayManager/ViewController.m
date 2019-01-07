//
//  ViewController.m
//  AliPayManager
//
//  Created by YanYi on 2019/1/7.
//  Copyright © 2019 YanYi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UILabel *lab = [[UILabel alloc]init];
    lab.frame = self.view.frame;
    lab.textAlignment = NSTextAlignmentCenter;
    lab.text = @"AliPayManager";
    lab.font = [UIFont systemFontOfSize:28];
    lab.textColor = [UIColor blueColor];
    [self.view addSubview:lab];
    lab.center = self.view.center;
    
    // Do any additional setup after loading the view, typically from a nib.
}


@end
