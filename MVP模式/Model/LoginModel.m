//
//  LoginModel.m
//  MVP模式
//
//  Created by 涂世展 on 2020/4/4.
//  Copyright © 2020 tushizhan. All rights reserved.
//

#import "LoginModel.h"

@implementation LoginModel

- (void)login:(NSString *)name
          pwd:(NSString *)pwd
     callBack:(CallBack)callBack{
    // 具体数据层的来源处理逻辑在model层处理
    // 数据库
    // 网络
    // 本地文件 plist等
    
    [HttpUtils postWithName:name pwd:pwd callBack:^(NSString * _Nullable result) {
        // 此处做json解析,缓存数据相关操作
        // 由于是模拟数据只有一句打印,所以直接block回调出去
        callBack(result);
    }];
}

@end
