//
//  FNYBaseViewController.h
//  Fny
//
//  Created by fny on 2019/10/31.
//  Copyright © 2019 FNYBaseVC Co. Ltd. All rights reserved.
//


#import <UIKit/UIKit.h>
#import "DefineHeader.h"
#import "UIView+Extension.h"
///无数据背景图
//#import "UIScrollView+EmptyDataSet.h"




NS_ASSUME_NONNULL_BEGIN


//@interface FNYBaseViewController : UIViewController<DZNEmptyDataSetSource, DZNEmptyDataSetDelegate>

@interface FNYBaseViewController : UIViewController


/*!
 *  设置是否关闭侧滑手势
 *  Mark: yes 关闭侧滑
 */
@property (nonatomic,assign,readwrite)BOOL hidenPopGesture;


///返回键点击事件
- (void)backItemClick:(UIBarButtonItem *)sender ;

@end

NS_ASSUME_NONNULL_END
