//
//  LoginPresenter.h
//  MVP模式
//
//  Created by 涂世展 on 2020/4/4.
//  Copyright © 2020 tushizhan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LoginProtocol.h"

NS_ASSUME_NONNULL_BEGIN

// P层
@interface LoginPresenter : NSObject

// 绑定
- (void)attachProtocol:(id<LoginProtocol>)loginProtocol;
// 解绑
- (void)detachView;
// 登录
- (void)login:(NSString *)name
          pwd:(NSString *)pwd;

@end

NS_ASSUME_NONNULL_END
