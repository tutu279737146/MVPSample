//
//  HttpUtils.h
//  MVP模式
//
//  Created by 涂世展 on 2020/4/4.
//  Copyright © 2020 tushizhan. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^CallBack)(NSString * _Nullable result);

NS_ASSUME_NONNULL_BEGIN

@interface HttpUtils : NSObject

+ (void)postWithName: (NSString *)name
                 pwd: (NSString *)pwd
            callBack: (CallBack)callBack;

@end

NS_ASSUME_NONNULL_END
