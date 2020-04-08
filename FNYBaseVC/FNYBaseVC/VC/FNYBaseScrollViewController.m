//
//  FNYBaseScrollVC.m
//  Fny
//
//  Created by fny on 2019/10/31.
//  Copyright © 2019 FNYBaseVC Co. Ltd. All rights reserved.
//

#import "FNYBaseScrollViewController.h"
#import "UIView+Extension.h"

@interface FNYBaseScrollViewController ()

@end

@implementation FNYBaseScrollViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.scrollView];
}

-(void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    self.scrollView.height = self.view.height - kTabBarArcHeight;
}

-(UIScrollView *)scrollView {
    if (!_scrollView) {
        _scrollView = [UIScrollView new];
        _scrollView.frame = self.view.bounds;
        _scrollView.delegate = self;
//        _scrollView.emptyDataSetSource   = self;
//        _scrollView.emptyDataSetDelegate = self;
//        self.searchDisplayController.searchResultsTableView.emptyDataSetSource = self;
//        self.searchDisplayController.searchResultsTableView.emptyDataSetDelegate = self;
    }
    
    return _scrollView;
}

@end
