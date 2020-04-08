//
//  DefineHeader.h
//  Fny
//
//  Created by fny on 2019/10/31.
//  Copyright © 2019 FNYBaseVC Co. Ltd. All rights reserved.
//

#ifndef DefineHeader_h
#define DefineHeader_h

///单例宏
// .h
#define singleton_interface(class) +(instancetype) shared##class;
// .m
#define singleton_implementation(class)         \
static class *_instance;                        \
\
+(id) allocWithZone : (struct _NSZone *) zone { \
static dispatch_once_t onceToken;           \
dispatch_once(&onceToken, ^{                \
_instance = [super allocWithZone:zone]; \
});                                         \
\
return _instance;                           \
}                                               \
\
+(instancetype) shared##class                   \
{                                           \
if (_instance == nil) {                     \
_instance = [[class alloc] init];       \
}                                           \
\
return _instance;                            \
}\
\
- (id)copyWithZone:(NSZone *)zone \
{ \
return _instance; \
}


#define SCREEN_WIDTH ([UIScreen mainScreen].bounds.size.width)
#define SCREEN_HEIGHT ([UIScreen mainScreen].bounds.size.height)

//根据RGB值返回颜色
#define RGB(r,g,b) [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:1]
#define RGBH(r,g,b,h) [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:h]

#define HexRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

#define HexRGBa(rgbValue,a) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:a]


#define MainBGColor HexRGB(0xf7f7f7)

#define MainCellLineColor HexRGB(0xf3f3f3)

#define MainWhiteBGColor HexRGB(0xffffff)

///主题色（红色）
#define MainThemeBGColor HexRGB(0xed4344)

#define Font(a) [UIFont systemFontOfSize:a]

#define ImageName(a) [UIImage imageNamed:a]


#define KROOTVC [UIApplication sharedApplication].delegate.window.rootViewController.navigationController


///导航栏底部
#define NavBottom self.navigationController.navigationBar.bottom
///时间栏高度
#define kStatusBarHeight [[UIApplication sharedApplication] statusBarFrame].size.height
///导航栏高度
#define kNavBarHeight 44.0
///时间栏加导航栏高度
#define kNavigationHeight (kStatusBarHeight + kNavBarHeight)
///tabbar高度
#define kTabBarHeight 49.0
///底部安全距离 用于适配iPhoneX以上
#define kTabBarArcHeight ([[UIApplication sharedApplication] statusBarFrame].size.height>20?34.0:0.0)




#endif /* DefineHeader_h */
