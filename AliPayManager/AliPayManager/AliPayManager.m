//
//  AliPayManager.m
//  XFAliPayManager
//
//  Created by YanYi on 2019/1/7.
//  Copyright © 2019 YanYi. All rights reserved.
//

#import "AliPayManager.h"

@implementation AliPayManager

static AliPayManager *s_instance;

- (void)onResp:(id)rep {
    if (self.delegate && [self.delegate respondsToSelector:@selector(managerDidRecvAliPayBackMessageRep:)]) {
        [self.delegate managerDidRecvAliPayBackMessageRep:rep];
    }
}

+ (instancetype)allocWithZone:(struct _NSZone *)zone {
    if (s_instance == nil) {
        static dispatch_once_t onceToken;
        dispatch_once(&onceToken, ^{
            s_instance = [super allocWithZone:zone];
        });
    }
    return s_instance;
}

- (instancetype)init {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        s_instance                      = [super init];
    });
    return s_instance;
}

+ (instancetype)sharedManager {
    return [[self alloc]init];
}

- (id)copy {
    return s_instance;
}

- (id)copyWithZone:(NSZone *)zone {
    return s_instance;
}

- (id)mutableCopy {
    return s_instance;
}

- (id)mutableCopyWithZone:(NSZone *)zone {
    return s_instance;
}


@end
