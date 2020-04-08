//
//  NSString+Category.m
//  Fny
//
//  Created by fny on 2019/10/31.
//  Copyright © 2019 FNYBaseVC Co. Ltd. All rights reserved.
//

#import "NSString+Category.h"

@implementation NSString (Category)

///如果是空字符串 返回Yes 如果不是 返回NO
-(BOOL)isNull {
    if ([self isKindOfClass:[NSNull class]]
        ||[self isEqual:[NSNull null]]
        ||self == nil
        || self.length <= 0
        || [self isEqualToString:@""]
        || [self isEqualToString:@"<null>"]
        || [self isEqualToString:@"(null)"]
        || [self isEqualToString:@"null"]
        || [self isEqualToString:@"NULL"]) {
        return YES;
    }else {
        return NO;
    }
    
}

@end
