//
//  LoginProtocol.h
//  MVP模式
//
//  Created by 涂世展 on 2020/4/4.
//  Copyright © 2020 tushizhan. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

// V层交互协议
@protocol LoginProtocol <NSObject>

- (void)onLoginResult:(NSString *)result;

@end

NS_ASSUME_NONNULL_END
