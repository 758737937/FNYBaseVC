//
//  UIViewController+EverPath.m
//  Fny
//
//  Created by fny on 2019/10/31.
//  Copyright © 2019 FNYBaseVC Co. Ltd. All rights reserved.
//

#import "UIViewController+EverPath.h"
#import <objc/runtime.h>
#import "EverPathMacro.h"

@implementation UIViewController (EverPath)

+ (void)load
{
#ifdef DEBUG
#if kPrintVCLog == 1
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        Class cls = [UIViewController class];
        Method m1 = class_getInstanceMethod(cls, @selector(viewDidLoad));
        Method m2 = class_getInstanceMethod(cls, @selector(ViewDidLoad_EverPath));
        method_exchangeImplementations(m1, m2);
    });
#endif
#endif
}

- (void)ViewDidLoad_EverPath
{
    [self ViewDidLoad_EverPath];
    printf("显示的VC是Ever_VC_Path:\n--------------------%s\n%s\n\n",NSStringFromClass(self.class).UTF8String,self.title.UTF8String);
        NSLog(@"viewDidLoad*****%@*****",NSStringFromClass([self class]));
}

@end
