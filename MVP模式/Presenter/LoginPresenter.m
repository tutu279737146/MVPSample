//
//  LoginPresenter.m
//  MVP模式
//
//  Created by 涂世展 on 2020/4/4.
//  Copyright © 2020 tushizhan. All rights reserved.
//

#import "LoginPresenter.h"
#import "LoginModel.h"

@interface LoginPresenter ()

@property (nonatomic ,strong) LoginModel *loginModel;
@property (nonatomic ,strong) id<LoginProtocol> loginProtocol;

@end

@implementation LoginPresenter

- (instancetype)init{
    self = [super init];
    if (self) {
        _loginModel = [LoginModel new];
    }
    return self;
}

- (void)attachProtocol:(id<LoginProtocol>)loginProtocol{
    _loginProtocol = loginProtocol;
}
- (void)detachView{
    _loginProtocol = nil;
}
- (void)login:(NSString *)name
          pwd:(NSString *)pwd{
    [_loginModel login:name pwd:pwd callBack:^(NSString * _Nullable result) {
        [_loginProtocol onLoginResult:result];
    }];
}

@end
