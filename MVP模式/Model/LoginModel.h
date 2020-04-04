//
//  LoginModel.h
//  MVP模式
//
//  Created by 涂世展 on 2020/4/4.
//  Copyright © 2020 tushizhan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HttpUtils.h"

NS_ASSUME_NONNULL_BEGIN

// M层(数据层)
@interface LoginModel : NSObject

// 登录
- (void)login:(NSString *)name
         pwd:(NSString *)pwd
     callBack:(CallBack)callBack;

@end

NS_ASSUME_NONNULL_END
