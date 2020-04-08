//
//  UIView+Extension.h
//  Fny
//
//  Created by fny on 2019/10/31.
//  Copyright © 2019 FNYBaseVC Co. Ltd. All rights reserved.

#import <UIKit/UIKit.h>



@interface UIView(Extension)

/** UIView 的坐标X点 */
@property (nonatomic, assign)CGFloat x;
/** UIView 的坐标y点 */
@property (nonatomic, assign)CGFloat y;

/** UIView 的中心点X值 */
@property (nonatomic, assign)CGFloat centerX;
/** UIView 的中心点Y值 */
@property (nonatomic, assign)CGFloat centerY;
/** UIView 的最大X值 */
@property (nonatomic,assign)CGFloat maxX;
/** UIView 的最大Y值 */
@property (nonatomic,assign)CGFloat maxY;

/** UIView 的宽度 */
@property (nonatomic,assign)CGFloat width;
/** UIView 的高度 */
@property (nonatomic,assign)CGFloat height;

/** UIView 的size */
@property (nonatomic,assign)CGSize size;
/** UIView 的坐标 */
@property (nonatomic,assign)CGPoint origin;

/** UIView 的宽度 bounds */
@property (nonatomic,assign)CGFloat boundsWidth;
/** UIView 的高度 bounds */
@property (nonatomic,assign)CGFloat boundsHeight;

/** 上 < Shortcut for frame.origin.y  */
@property (nonatomic) CGFloat top;

/** 下 < Shortcut for frame.origin.y + frame.size.height */
@property (nonatomic) CGFloat bottom;
 
/** 左 < Shortcut for freme.origin.x */
@property (nonatomic) CGFloat left;

/** 右 < Shortcut for frame.origin.x + frame.size.width */
@property (nonatomic) CGFloat right;

///给上面两个角画圆
-(void)TopLeftTopRightLayerCornerRadius:(float )corner;

///给下面两个角画圆
-(void)BottomLeftRightLayerCornerRadius:(float )corner;


///画圆角
- (void)addCorner:(CGFloat)radius;
///画边款
- (void)addCorner:(CGFloat)radius
      borderWidth:(CGFloat)borderWidth
      borderColor:(UIColor *)borderColor
  backGroundColor:(UIColor*)bgColor;

@end
