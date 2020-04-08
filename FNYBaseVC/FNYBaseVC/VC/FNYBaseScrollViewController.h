//
//  FNYBaseScrollVC.h
//  Fny
//
//  Created by fny on 2019/10/31.
//  Copyright © 2019 FNYBaseVC Co. Ltd. All rights reserved.
//

#import "FNYBaseViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface FNYBaseScrollViewController : FNYBaseViewController<UIScrollViewDelegate>

@property (nonatomic,strong)UIScrollView *scrollView;

@end

NS_ASSUME_NONNULL_END
