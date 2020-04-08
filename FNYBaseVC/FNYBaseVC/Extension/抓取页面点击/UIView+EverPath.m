//
//  UIView+EverPath.m
//  Fny
//
//  Created by fny on 2019/10/31.
//  Copyright © 2019 FNYBaseVC Co. Ltd. All rights reserved.

#import "UIView+EverPath.h"
#import <objc/runtime.h>
#import "EverPathMacro.h"

@implementation UIView (EverPath)

+ (void)load
{
#ifdef DEBUG
#if kPrintPathLog == 1
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        Class cls = [UIView class];
        Method m1 = class_getInstanceMethod(cls, @selector(hitTest:withEvent:));
        Method m2 = class_getInstanceMethod(cls, @selector(hitTest:withEvent_EverPath:));
        method_exchangeImplementations(m1, m2);
    });
#endif
#endif
}

- (UIView *)hitTest:(CGPoint)point withEvent_EverPath:(UIEvent *)event {
    printf("显示的是Ever_HitTest_Path:%s\n",self.description.UTF8String);
    return [self hitTest:point withEvent_EverPath:event];
}

@end
