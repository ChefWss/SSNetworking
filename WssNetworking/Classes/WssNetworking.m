//
//  WssNetworking.m
//  WssNetworking_Example
//
//  Created by 王少帅 on 2020/11/3.
//  Copyright © 2020 WangSS. All rights reserved.
//

#import "WssNetworking.h"
#import <AFNetworking/AFNetworking.h>

@implementation WssNetworking

- (void)doSomethng{
    NSLog(@"doSomethng ~~~");
}

- (NSURLSessionDataTask *)POSTWithURLString:(NSString *)URLString
                                 parameters:(id)parameters
                                    success:(void (^)(id _Nonnull))success
                                    failure:(void (^)(id _Nonnull))failure
{
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.responseSerializer = [AFHTTPResponseSerializer serializer];
    manager.requestSerializer.timeoutInterval = 20.0f;
    _task = [manager POST:URLString parameters:parameters constructingBodyWithBlock:^(id<AFMultipartFormData>  _Nonnull formData) {
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        if (success) {
            success(@YES);
        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        if (failure) {
            failure(@NO);
        }
    }];
    return _task;
}

@end
