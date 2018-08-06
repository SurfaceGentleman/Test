//
//  VCRoot.m
//  UINavgation+UItabBarController
//
//  Created by 开朗的男子 on 2018/8/6.
//  Copyright © 2018年 开朗的男子. All rights reserved.
//

#import "AppDelegate.h"
#import "VCRoot.h"
#import "firstViewController.h"
#import "secondViewController.h"
#import "thirdViewController.h"
#import "registerViewController.h"

@interface VCRoot ()

@end

@implementation VCRoot

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    UITextField * userName = [[UITextField alloc] initWithFrame:CGRectMake(30, 200, 300, 30)];
    userName.placeholder = @"请输入用户名";
    userName.text = _strName;
    [self.view addSubview:userName];
    UITextField * passWord = [[UITextField alloc] initWithFrame:CGRectMake(30, 250, 300, 30)];
    passWord.text = _strPass;
    passWord.placeholder = @"请输入密码";
    [self.view addSubview:passWord];
    
    UIButton * btnLogin = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btnLogin setTitle:@"登录" forState:UIControlStateNormal];
    btnLogin.frame = CGRectMake(60, 300, 60, 20);
    [btnLogin addTarget:self action:@selector(clickToMain) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnLogin];
    
    UIButton * btnRegister = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btnRegister setTitle:@"注册" forState:normal];
    btnRegister.frame = CGRectMake(100, 300, 60, 20);
    [btnRegister addTarget:self action:@selector(clickToRegister) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnRegister];
    
}

- (void)clickToMain
{
    //分栏设置
    _tbController = [[UITabBarController alloc] init];
    firstViewController * firstC = [firstViewController new];
    firstC.title = @"1";
    secondViewController * secondC = [secondViewController new];
    secondC.title = @"朋友圈";
    thirdViewController * thirdC = [thirdViewController new];
    thirdC.title = @"3";
    
    
    //导航栏设置
    UINavigationController * nav1 = [[UINavigationController alloc] initWithRootViewController:firstC];
    UINavigationController * nav2 = [[UINavigationController alloc] initWithRootViewController:secondC];
    UINavigationController * nav3 = [[UINavigationController alloc] initWithRootViewController:thirdC];
    
    [nav1.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor whiteColor]}];
    [nav2.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor whiteColor]}];
    //[nav3.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor whiteColor]}];
    nav1.navigationBar.barTintColor = [UIColor colorWithRed:0.23 green:0.22 blue:0.25 alpha:1.00];
    nav1.title = @"界面一";
    nav2.navigationBar.barTintColor = [UIColor colorWithRed:0.23 green:0.22 blue:0.25 alpha:1.00];
    nav2.title = @"界面二";
    UIBarButtonItem * item = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemRefresh target:self action:nil];
    secondC.navigationItem.leftBarButtonItem = item;
    secondC.navigationItem.backBarButtonItem = item;
    secondC.navigationItem.backBarButtonItem.tintColor = [UIColor whiteColor];
    secondC.view.backgroundColor = [UIColor whiteColor];
    nav3.navigationBar.barTintColor = [UIColor colorWithRed:0.23 green:0.22 blue:0.25 alpha:1.00];
    nav3.title = @"界面三";
    
    
    NSArray * controllers = [NSArray arrayWithObjects:nav1, nav2, nav3, nil];
    _tbController.viewControllers = controllers;
    if ([_strName isEqualToString:@"04151001"] == YES && [_strPass isEqualToString:@"1234567890"]) {
        ;
    }
    
    [self presentViewController:_tbController animated:YES completion:nil];
}

- (void)clickToRegister
{
    registerViewController * rigist = [registerViewController new];
    [self presentViewController:rigist animated:YES completion:nil];
}

@end
