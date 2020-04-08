//
//  FNYNewBaseViewController.m
//  Fny
//
//  Created by fny on 2019/10/31.
//  Copyright © 2019 FNYBaseVC Co. Ltd. All rights reserved.
//

#import "FNYBaseViewController.h"

@interface FNYBaseViewController ()



@end

@implementation FNYBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    self.automaticallyAdjustsScrollViewInsets = NO;
    self.edgesForExtendedLayout = UIRectEdgeNone;
    
    
    //设置背景色
    self.view.backgroundColor = UIColor.whiteColor;
    
    //去掉透明后导航栏下边的黑边
    [self.navigationController.navigationBar setShadowImage:[[UIImage alloc] init]];
    ///
    self.navigationController.navigationBar.translucent = NO;
//    [self.navigationController.navigationBar setBackgroundImage:[[FNYToolsMgr sharedFNYToolsMgr] imageWithColor:MainThemeBGColor] forBarMetrics:UIBarMetricsDefault];
    
    ///设置标题颜色
    [self.navigationController.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor whiteColor]}];
    
    
    if (self.navigationController.viewControllers.count > 1|| self.navigationController.presentingViewController != nil) {
        //重新创建一个barButtonItem
        UIBarButtonItem *backItem = [[UIBarButtonItem alloc]initWithImage: [UIImage imageNamed:@"返回@3x"] style:UIBarButtonItemStylePlain target:self action:@selector(backItemClick:)];
        //设置backBarButtonItem即可
        self.navigationItem.leftBarButtonItem = backItem;
        self.navigationItem.hidesBackButton = YES;
    }else {
        //重新创建一个barButtonItem
        UIBarButtonItem *backItem = [[UIBarButtonItem alloc]initWithTitle:@"" style:UIBarButtonItemStylePlain target:nil action:nil];
        //设置backBarButtonItem即可
        self.navigationItem.backBarButtonItem = backItem;
        
        [backItem setImageInsets:UIEdgeInsetsMake(0, 18, 0, -18)];
//        self.navigationController.navigationBar.backIndicatorImage = ImageName(@"返回@3x");
    }
    
}






#pragma mark - action
- (void)backItemClick:(UIBarButtonItem *)sender {
    [self.navigationController popViewControllerAnimated:YES];

}

#pragma mark -- Lazy load
- (void)setHidenPopGesture:(BOOL)hidenPopGesture {
    _hidenPopGesture = hidenPopGesture;
    
    
    if ([self.navigationController respondsToSelector:@selector(interactivePopGestureRecognizer)]) {
        self.navigationController.interactivePopGestureRecognizer.enabled = !_hidenPopGesture;
    }
}




//- (UIImage *)imageForEmptyDataSet:(UIScrollView *)scrollView {
//    return [UIImage imageNamed:@"暂无数据"];
//}
//- (NSAttributedString *)titleForEmptyDataSet:(UIScrollView *)scrollView {
//    NSString *title = @"暂无数据";
//    NSDictionary *attributes = @{
//                                 NSFontAttributeName:[UIFont boldSystemFontOfSize:18.0f],
//                                 NSForegroundColorAttributeName:[UIColor darkGrayColor]
//                                 };
//    return [[NSAttributedString alloc] initWithString:title attributes:attributes];
//}
/////空白页是能滚动：默认NO
//- (BOOL)emptyDataSetShouldAllowScroll:(UIScrollView *)scrollView
//{
//    return YES;
//}


- (void)dealloc {
    
    NSLog(@"dealloc*****%@*****",NSStringFromClass([self class]));
}



@end
