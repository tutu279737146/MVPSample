//
//  ViewController.m
//  MVP模式
//
//  Created by 涂世展 on 2020/4/4.
//  Copyright © 2020 tushizhan. All rights reserved.
//

#import "ViewController.h"
#import "LoginProtocol.h"
#import "LoginPresenter.h"

@interface ViewController ()<
LoginProtocol
>
@property (nonatomic ,strong) LoginPresenter *loginPresenter;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _loginPresenter = [[LoginPresenter alloc] init];
    [_loginPresenter attachProtocol:self];
    [_loginPresenter login:@"小明" pwd:@"123"];
}

- (void)onLoginResult:(nonnull NSString *)result {
    NSLog(@"%@",result);
}

@end
