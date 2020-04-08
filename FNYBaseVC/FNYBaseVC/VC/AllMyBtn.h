//
//  AllMyBtn.h
//  YLPlatformCodeSDK
//
//  Created by ylwl on 2017/11/6.
//  Copyright © 2017年 com.youguu.h5gameCenter. All rights reserved.
//

#import <UIKit/UIKit.h>
@interface AllMyBtn : UIButton
typedef void (^buttonBlock)(AllMyBtn * sender);//声明Block
@property(nonatomic,copy)buttonBlock tempBlock;


///用于圆角按钮
+(AllMyBtn *)initCornerBtnFrame:(CGRect)frame
                      WithTitle:(NSString *)str
                     titleColor:(UIColor *)titleColor
               selectTitleColor:(UIColor *)selectTitleColor
                backgroundColor:(UIColor *)backgroundColor
                       andBlock:(buttonBlock)myBlock;

//一般用于登录确认 等 背景色是主题色的按钮
+(AllMyBtn *)initCertainBtnWithTitle:(NSString *)str andBlock:(buttonBlock)myBlock;
//一般用于登录确认 等 背景色是主题色的按钮
+(AllMyBtn *)initBackgroundColor:(UIColor *)color WithTitle:(NSString *)str WithTitleColor:(UIColor *)titleColor andBlock:(buttonBlock)myBlock;
//用于选择是否同意 如同意协议 自动登录 等  无背景色的按钮
+(AllMyBtn *)initNoBackgroundSelectedImageBtnTitle:(NSString *)str andBlock:(buttonBlock)myBlock;
//无背景色 无图片的 按钮
+(AllMyBtn *)initNoBackgroundBtnTitle:(NSString *)str andTitleColor:(UIColor *)color andBlock:(buttonBlock)myBlock;
+(AllMyBtn *)initNoBackgroundBtnTitle:(NSString *)str andTitleColor:(UIColor *)color andRange:(NSRange)range andOtherColor:(UIColor *)otherColor andBlock:(buttonBlock)myBlock;
//返回按钮
+(AllMyBtn *)initBackBtnAndBlock:(buttonBlock)myBlock;
//只有图片按钮
+(AllMyBtn *)initBtnWithImage:(UIImage *)image withWidth:(float)width AndBlock:(buttonBlock)myBlock;
//正常的按钮
+(AllMyBtn *)initNormalBtnWithFrame:(CGRect )frame andTitle:(NSString *)str andBackgroundColor:(UIColor *)color andBlock:(buttonBlock)myBlock;
//背景图加字
+(AllMyBtn *)initNormalBtnWithFrame:(CGRect )frame andTitle:(NSString *)str andBackgroundImage:(UIImage *)Image andBlock:(buttonBlock)myBlock;
//圆形的按钮
+(AllMyBtn *)initCircularBtnWithWidth:(float )width andImage:(UIImage *)image andBlock:(buttonBlock)myBlock;


//正方形的 上图下字按钮
+(AllMyBtn *)initBtnTopImage:(UIImage *)image andBottomTitle:(NSString *)title andWidth:(float)width andBlock:(buttonBlock)myBlock;
//左字右图
+(AllMyBtn *)initBtnCenterTitle:(NSString *)title andRightImage:(UIImage *)rightImage andHeight:(float)height andBlock:(buttonBlock)myBlock;
@end
