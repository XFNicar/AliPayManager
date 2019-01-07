//
//  AliPayManager.h
//  XFAliPayManager
//
//  Created by YanYi on 2019/1/7.
//  Copyright © 2019 YanYi. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol XFAliPayManagerDelegate <NSObject>

@optional

- (void)managerDidRecvAliPayBackMessageRep:(id)response;


@end

@interface AliPayManager : NSObject

@property (nonatomic, weak ) id<XFAliPayManagerDelegate> delegate;

+ (instancetype)sharedManager;

- (void)onResp:(id)rep;

@end

NS_ASSUME_NONNULL_END
