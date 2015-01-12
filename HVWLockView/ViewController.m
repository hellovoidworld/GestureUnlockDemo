//
//  ViewController.m
//  HVWLockView
//
//  Created by hellovoidworld on 15/1/12.
//  Copyright (c) 2015年 hellovoidworld. All rights reserved.
//

#import "ViewController.h"
#import "HVWLockView.h"

@interface ViewController () <HVWLockViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // 设置背景
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"Home_refresh_bg"]];
}

/** 设置状态栏样式 */
- (UIStatusBarStyle)preferredStatusBarStyle {
    return UIStatusBarStyleLightContent;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)hvwLockView:(HVWLockView *)hvwLockView didFinishedWithPath:(NSString *)path {
    NSLog(@"手势解锁的输出序列：%@", path);
}

@end
