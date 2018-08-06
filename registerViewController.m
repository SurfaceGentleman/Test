//
//  registerViewController.m
//  UINavgation+UItabBarController
//
//  Created by 开朗的男子 on 2018/8/6.
//  Copyright © 2018年 开朗的男子. All rights reserved.
//

#import "registerViewController.h"
#import "VCRoot.h"

@interface registerViewController ()

@end

@implementation registerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    _userName = [[UITextField alloc] initWithFrame:CGRectMake(30, 200, 300, 30)];
    _userName.placeholder = @"请输入用户名";
    [self.view addSubview:_userName];
    _passWord = [[UITextField alloc] initWithFrame:CGRectMake(30, 250, 300, 30)];
    _passWord.placeholder = @"请输入密码";
    [self.view addSubview:_passWord];
    
    UIButton * btnLogin = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btnLogin setTitle:@"返回登录" forState:UIControlStateNormal];
    btnLogin.frame = CGRectMake(60, 300, 80, 20);
    [btnLogin addTarget:self action:@selector(clickToLogin) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnLogin];
    
    UIButton * btnRegister = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btnRegister setTitle:@"点击注册" forState:normal];
    btnRegister.frame = CGRectMake(150, 300, 80, 20);
    [btnRegister addTarget:self action:nil forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnRegister];
}

- (void)clickToLogin
{
    VCRoot * login = [VCRoot new];
    login.strName = _userName.text;
    login.strPass = _passWord.text;
    [self presentViewController:login animated:YES completion:nil];
}


@end
