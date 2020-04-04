//
//  HttpUtils.m
//  MVP模式
//
//  Created by 涂世展 on 2020/4/4.
//  Copyright © 2020 tushizhan. All rights reserved.
//

#import "HttpUtils.h"

@implementation HttpUtils

//+ (void)postWithName:(NSString *)name
//                 pwd:(NSString *)pwd
//            callBack:(CallBack)callBack{
//    NSURL *url = [[NSURL alloc] initWithString:@"test"];
//    NSMutableURLRequest *r = [[NSMutableURLRequest alloc] initWithURL:url];
//    r.HTTPMethod = @"POST";
//    NSString *params = [[NSString alloc] initWithFormat:@"username=%@password=%@",name,pwd];
//    r.HTTPBody = [params dataUsingEncoding:NSUTF8StringEncoding];
//    NSURLSession *session = [NSURLSession sharedSession];
//    NSURLSessionDataTask *task = [session dataTaskWithRequest:r completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
//        if (error != nil) {
//            NSLog(@"失败");
//        }else{
//            NSLog(@"成功");
//            NSString *result = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
//            callBack(result);
//        }
//    }];
//    [task resume];
//}

+ (void)postWithName:(NSString *)name
                 pwd:(NSString *)pwd
            callBack:(CallBack)callBack{
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        NSString *result = @"登录成功";
              callBack(result);
    });
}
@end
