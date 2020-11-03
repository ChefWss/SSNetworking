//
//  WssNetworking.h
//  WssNetworking_Example
//
//  Created by 王少帅 on 2020/11/3.
//  Copyright © 2020 WangSS. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface WssNetworking : NSObject

- (void)doSomethng;

@property (strong,nonatomic) NSURLSessionDataTask *task;

- (NSURLSessionDataTask *)POSTWithURLString:(NSString *)URLString
                                 parameters:(id)parameters
                                    success:(void (^)(id responseObject))success
                                    failure:(void (^)(id error))failure;

@end

NS_ASSUME_NONNULL_END
