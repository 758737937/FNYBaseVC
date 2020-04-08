//
//  AllMyBtn.m
//  YLPlatformCodeSDK
//
//  Created by ylwl on 2017/11/6.
//  Copyright © 2017年 com.youguu.h5gameCenter. All rights reserved.
//

#import "AllMyBtn.h"
#import "UIView+Extension.h"
#import "DefineHeader.h"
@implementation AllMyBtn

///用于圆角按钮
+(AllMyBtn *)initCornerBtnFrame:(CGRect)frame
                      WithTitle:(NSString *)str
                     titleColor:(UIColor *)titleColor
               selectTitleColor:(UIColor *)selectTitleColor
                backgroundColor:(UIColor *)backgroundColor
                       andBlock:(buttonBlock)myBlock {
    
    AllMyBtn *btn = [AllMyBtn buttonWithType:UIButtonTypeCustom];
    btn.frame = frame;
    
    [btn setTitle:str             forState:UIControlStateNormal];
    [btn setTitleColor:titleColor forState:UIControlStateNormal];
    [btn setTitleColor:selectTitleColor forState:UIControlStateSelected];
    
    [btn setBackgroundColor:backgroundColor];
    
    btn.layer.cornerRadius = btn.height/2;
    btn.titleLabel.font = [UIFont systemFontOfSize:15];
    
    [btn addTarget:btn action:@selector(myBtnClick:) forControlEvents:UIControlEventTouchUpInside];
    
    btn.tempBlock=myBlock;
    return btn;
}



+(AllMyBtn *)initCertainBtnWithTitle:(NSString *)str andBlock:(buttonBlock)myBlock {
    AllMyBtn *btn = [AllMyBtn buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(10, 10, 120, 45);
    btn.backgroundColor = UIColor.redColor;
    btn.layer.cornerRadius = 22.5;
    btn.titleLabel.font = [UIFont systemFontOfSize:15];
    [btn setTitleColor:UIColor.whiteColor forState:UIControlStateNormal];
    [btn setTitle:str forState:UIControlStateNormal];
    [btn addTarget:btn action:@selector(myBtnClick:) forControlEvents:UIControlEventTouchUpInside];
    btn.tempBlock=myBlock;
    return btn;
}
+(AllMyBtn *)initBackgroundColor:(UIColor *)color WithTitle:(NSString *)str WithTitleColor:(UIColor *)titleColor andBlock:(buttonBlock)myBlock {
    AllMyBtn *btn = [AllMyBtn buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(10, 10, 90, 50);
    btn.backgroundColor = color;
    btn.titleLabel.font = [UIFont systemFontOfSize:15];
    [btn setTitleColor:titleColor forState:UIControlStateNormal];
    [btn setTitle:str forState:UIControlStateNormal];
    [btn addTarget:btn action:@selector(myBtnClick:) forControlEvents:UIControlEventTouchUpInside];
    btn.tempBlock=myBlock;
    return btn;
}
+(AllMyBtn *)initNoBackgroundSelectedImageBtnTitle:(NSString *)str andBlock:(buttonBlock)myBlock {
    AllMyBtn *btn = [AllMyBtn buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(10, 10, 90, 35);
    [btn setImage:[UIImage imageNamed:@"椭圆1"] forState:UIControlStateNormal];
    [btn setImage:[UIImage imageNamed:@"勾选"] forState:UIControlStateSelected];
    [btn setTitle:[NSString stringWithFormat:@"  %@", str] forState:UIControlStateNormal];
    [btn setTitleColor:HexRGB(0x000000) forState:UIControlStateNormal];
    btn.titleLabel.font = [UIFont systemFontOfSize:13];
    btn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    [btn addTarget:btn action:@selector(myBtnClick:) forControlEvents:UIControlEventTouchUpInside];
    btn.tempBlock=myBlock;
    return btn;
}

+(AllMyBtn *)initNoBackgroundBtnTitle:(NSString *)str andTitleColor:(UIColor *)color andBlock:(buttonBlock)myBlock {
    AllMyBtn *btn = [AllMyBtn buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(10, 10, 60, 50);
    [btn setTitle:str forState:UIControlStateNormal];
    [btn setTitleColor:color forState:UIControlStateNormal];
    btn.titleLabel.font = [UIFont systemFontOfSize:15];
    [btn addTarget:btn action:@selector(myBtnClick:) forControlEvents:UIControlEventTouchUpInside];
    btn.tempBlock=myBlock;
    return btn;
}
+(AllMyBtn *)initNoBackgroundBtnTitle:(NSString *)str andTitleColor:(UIColor *)color andRange:(NSRange)range andOtherColor:(UIColor *)otherColor andBlock:(buttonBlock)myBlock {
    AllMyBtn *btn = [AllMyBtn buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(10, 10, 60, 30);
//    [btn setTitle:str forState:UIControlStateNormal];
    btn.titleLabel.font = [UIFont systemFontOfSize:10];
    [btn setTitleColor:color forState:UIControlStateNormal];
    // 创建 NSMutableAttributedString
    NSMutableAttributedString *attrStr = [[NSMutableAttributedString alloc] initWithString:str];
//    // 设置字体和设置字体的范围
    [attrStr addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:16.0f] range:range];
    // 添加文字颜色
    [attrStr addAttribute:NSForegroundColorAttributeName value:otherColor range:range];
    [btn setAttributedTitle:attrStr forState:UIControlStateNormal];

    [btn addTarget:btn action:@selector(myBtnClick:) forControlEvents:UIControlEventTouchUpInside];
    btn.tempBlock=myBlock;
    return btn;
}


+(AllMyBtn *)initBackBtnAndBlock:(buttonBlock)myBlock{
    AllMyBtn *btn = [AllMyBtn buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(0, 0, 50, 50);
    [btn setImage:[UIImage imageNamed:@"返回"] forState:UIControlStateNormal];
    [btn addTarget:btn action:@selector(myBtnClick:) forControlEvents:UIControlEventTouchUpInside];
    btn.tempBlock=myBlock;
    return btn;
}
+(AllMyBtn *)initBtnWithImage:(UIImage *)image withWidth:(float)width AndBlock:(buttonBlock)myBlock {
    AllMyBtn *btn = [AllMyBtn buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(0, 0, width, width);
    [btn setImage:image forState:UIControlStateNormal];
    [btn addTarget:btn action:@selector(myBtnClick:) forControlEvents:UIControlEventTouchUpInside];
    btn.tempBlock=myBlock;
    return btn;
}

+(AllMyBtn *)initNormalBtnWithFrame:(CGRect)frame andTitle:(NSString *)str andBackgroundColor:(UIColor *)color andBlock:(buttonBlock)myBlock {
    AllMyBtn *btn = [AllMyBtn buttonWithType:UIButtonTypeCustom];
    btn.frame = frame;
    [btn setTitle:str forState:UIControlStateNormal];
    btn.backgroundColor = color;
    btn.titleLabel.font = [UIFont systemFontOfSize:14];
    [btn addTarget:btn action:@selector(myBtnClick:) forControlEvents:UIControlEventTouchUpInside];
    btn.tempBlock=myBlock;
    return btn;
}
+(AllMyBtn *)initNormalBtnWithFrame:(CGRect)frame andTitle:(NSString *)str andBackgroundImage:(UIImage *)Image andBlock:(buttonBlock)myBlock {
    AllMyBtn *btn = [AllMyBtn buttonWithType:UIButtonTypeCustom];
    btn.frame = frame;
    [btn setTitle:str forState:UIControlStateNormal];
    [btn setBackgroundImage:Image forState:UIControlStateNormal];
    btn.layer.cornerRadius = 3;
    btn.titleLabel.font = [UIFont systemFontOfSize:10];
    btn.titleLabel.adjustsFontSizeToFitWidth = YES;
    [btn setTitleColor:HexRGB(0x222222) forState:UIControlStateNormal];
    [btn addTarget:btn action:@selector(myBtnClick:) forControlEvents:UIControlEventTouchUpInside];
    btn.tempBlock=myBlock;
    return btn;
}
+(AllMyBtn *)initCircularBtnWithWidth:(float)width andImage:(UIImage *)image andBlock:(buttonBlock)myBlock
{
    AllMyBtn *btn = [AllMyBtn buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(0, 0, width, width);
    btn.layer.cornerRadius = width/2.0;
    btn.clipsToBounds = YES;
    [btn setBackgroundImage:image forState:UIControlStateNormal];
    [btn setBackgroundImage:image forState:UIControlStateHighlighted];
    [btn addTarget:btn action:@selector(myBtnClick:) forControlEvents:UIControlEventTouchUpInside];
    btn.tempBlock=myBlock;
    return btn;
}
+(AllMyBtn *)initBtnTopImage:(UIImage *)image andBottomTitle:(NSString *)title andWidth:(float)width andBlock:(buttonBlock)myBlock{
    AllMyBtn *btn = [AllMyBtn buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(0, 0, 2*width, width);
    [btn setImage:image forState:UIControlStateNormal];
    [btn setTitle:title forState:UIControlStateNormal];
    btn.titleLabel.font = [UIFont systemFontOfSize:9];
    [btn setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    btn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;//使图片和文字水平居中显示
    [btn setTitleEdgeInsets:UIEdgeInsetsMake(btn.imageView.frame.size.height ,-btn.imageView.frame.size.width, 0.0,0.0)];//文字距离上边框的距离增加imageView的高度，距离左边框减少imageView的宽度，距离下边框和右边框距离不变
    [btn setImageEdgeInsets:UIEdgeInsetsMake(0.0,0.0,btn.titleLabel.height, -btn.titleLabel.bounds.size.width)];//图片距离右边框距离减少图片的宽度，其它不边
    [btn addTarget:btn action:@selector(myBtnClick:) forControlEvents:UIControlEventTouchUpInside];
    btn.frame = CGRectMake(0, 0, width, width);
    btn.tempBlock=myBlock;
    return btn;
}
+(AllMyBtn *)initBtnCenterTitle:(NSString *)title andRightImage:(UIImage *)rightImage andHeight:(float)height andBlock:(buttonBlock)myBlock{
    AllMyBtn *btn = [AllMyBtn buttonWithType: UIButtonTypeCustom];
    btn.frame = CGRectMake(0, 0, 19*height, height);
    [btn setTitle:title forState:UIControlStateNormal];
    [btn setImage:rightImage forState:UIControlStateNormal];
    btn.titleLabel.font = [UIFont systemFontOfSize:14];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn setTitleEdgeInsets:UIEdgeInsetsMake(0, -btn.imageView.bounds.size.width, 0, btn.imageView.bounds.size.width)];
    [btn setImageEdgeInsets:UIEdgeInsetsMake(0, btn.titleLabel.bounds.size.width, 0, -btn.titleLabel.bounds.size.width)];
    btn.backgroundColor = UIColor.whiteColor;
    [btn addTarget:btn action:@selector(myBtnClick:) forControlEvents:UIControlEventTouchUpInside];
    btn.tempBlock=myBlock;
    return btn;
}



-(void)myBtnClick:(AllMyBtn *)sender {
    if (self.tempBlock) {
        self.tempBlock(sender);
    }
}

@end
