//
//  FNYBasePagesViewController.h
//  Fny
//
//  Created by fny on 2019/10/31.
//  Copyright © 2019 FNYBaseVC Co. Ltd. All rights reserved.
//

#import "FNYBaseViewController.h"


NS_ASSUME_NONNULL_BEGIN

@interface FNYBasePagesViewController : FNYBaseViewController
@property (nonatomic,assign)NSInteger index;
@property (nonatomic,assign)NSInteger allCount;
///主页面
@property (nonatomic,strong) UIScrollView * contentView;
///上面的选择btnView
@property (nonatomic,strong)UIView *pagesView;
///上面的动画线
@property (nonatomic,strong)UIImageView *lineImgV;
///上面btn选中的颜色
@property (nonatomic,copy)UIColor *btnSelctColor;
///上面btn正常的颜色
@property (nonatomic,copy)UIColor *btnNomalColor;
///是否一次性加载所有view
@property (nonatomic,assign)BOOL isAddAllView;
///设置标题及子控制器
- (void)setUpWithItems: (NSArray <NSString *>*)items childVCs: (NSArray <UIViewController *>*)childVCs;

- (void)showChildVCViewAtIndex:(NSInteger)index animete:(BOOL)animete;

@end

NS_ASSUME_NONNULL_END
