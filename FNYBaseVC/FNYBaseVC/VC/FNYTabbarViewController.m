//
//  FNYTabbarViewController.m
//  Fny
//
//  Created by fny on 2019/10/31.
//  Copyright © 2019 FNYBaseVC Co. Ltd. All rights reserved.
//

#import "FNYTabbarViewController.h"
#import "UIView+Extension.h"


@interface FNYTabbarViewController ()

@end

@implementation FNYTabbarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //    self.tabBar.tintColor = UIColor.whiteColor;
    ///设置未选中文字颜色
    [[UITabBarItem appearance] setTitleTextAttributes:@{ NSForegroundColorAttributeName:[UIColor blackColor]} forState:UIControlStateNormal];
    ///设置选中时文字颜色
    [[UITabBarItem appearance] setTitleTextAttributes:@{ NSForegroundColorAttributeName:[UIColor whiteColor]} forState:UIControlStateSelected];
    
    if (@available(iOS 13.0, *)) {
        self.tabBar.tintColor = [UIColor whiteColor];
    }
    
    
    
    
    ///取消tabbar的透明效果
    [UITabBar appearance].translucent = NO;
    
    ///设置选择item的背景色
    CGSize indicatorImageSize = CGSizeMake(self.tabBar.width/self.tabBar.items.count, self.tabBar.height+kTabBarArcHeight);
    self.tabBar.selectionIndicatorImage = [self drawTabbarItemBackgroundImageWithSize:indicatorImageSize];
    
    

}

///用颜色画图
-(UIImage *)drawTabbarItemBackgroundImageWithSize:(CGSize)size {
    UIGraphicsBeginImageContext(size);
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    
    CGContextSetRGBFillColor(ctx, ((float)((0xed4344 & 0xFF0000) >> 16))/255.0, ((float)((0xed4344 & 0xFF00) >> 8))/255.0, ((float)(0xed4344 & 0xFF))/255.0, 1);
    CGContextFillRect(ctx, CGRectMake(0, -kTabBarArcHeight, size.width, size.height));
    
    UIImage *img = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return img;
}


@end
