//
//  FNYBaseNavigationController.m
//  Fny
//
//  Created by fny on 2019/10/31.
//  Copyright © 2019 FNYBaseVC Co. Ltd. All rights reserved.
//

#import "FNYBaseNavigationController.h"

@interface FNYBaseNavigationController ()

@end

@implementation FNYBaseNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
}



-(void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated {
    ///隐藏tabbar
    if (self.viewControllers.count > 0
        || self.navigationController.presentingViewController != nil) {
        viewController.hidesBottomBarWhenPushed = YES;
    }
    
    [super pushViewController:viewController animated:animated];
    
//    // 修改tabBra的frame
//    CGRect frame = self.tabBarController.tabBar.frame;
//    frame.origin.y = [UIScreen mainScreen].bounds.size.height - frame.size.height;
//    self.tabBarController.tabBar.frame = frame;
}




@end
