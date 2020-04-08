//
//  FNYNewBasePagesViewController.m
//  Fny
//
//  Created by fny on 2019/10/31.
//  Copyright © 2019 FNYBaseVC Co. Ltd. All rights reserved.
//

#import "FNYBasePagesViewController.h"
#import "UIView+Extension.h"
#import "AllMyBtn.h"
#import "DefineHeader.h"
@interface FNYBasePagesViewController ()<UIScrollViewDelegate>



@end

@implementation FNYBasePagesViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.btnNomalColor = UIColor.lightGrayColor;
    self.btnSelctColor = MainThemeBGColor;
}
-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self showChildVCViewAtIndex:self.index animete:NO];
}
///上面的选择btn View
-(UIView *)pagesView {
    if (!_pagesView) {
        _pagesView = [[UIView alloc]init];
        _pagesView.frame = CGRectMake(0,0, self.view.width,45);
        _pagesView.backgroundColor = UIColor.whiteColor;
        [self.view addSubview:_pagesView];
    }
    return _pagesView;
}
///下面的线view
-(UIImageView *)lineImgV {
    if (!_lineImgV) {
        _lineImgV = [[UIImageView alloc]init];
        _lineImgV.backgroundColor = MainThemeBGColor;
        [self.pagesView addSubview:_lineImgV];
    }
    return _lineImgV;
}
///中间主view
- (UIScrollView *)contentView {
    if (!_contentView) {
        _contentView = [[UIScrollView alloc] init];
        CGFloat contentViewY = self.pagesView.bottom+1;
        _contentView.frame = CGRectMake(0, contentViewY, self.view.width, self.view.height-contentViewY-self.navigationController.navigationBar.bottom);
        _contentView.delegate = self;
        _contentView.pagingEnabled = YES;
        _contentView.bounces = NO;
        _contentView.showsHorizontalScrollIndicator = NO;
        [self.view addSubview:_contentView];
    }
    return _contentView;
}

///设置标题和子控制器
- (void)setUpWithItems:(NSArray<NSString *> *)items childVCs:(NSArray<UIViewController *> *)childVCs{
    [self.childViewControllers makeObjectsPerformSelector:@selector(removeFromParentViewController)];
    self.allCount = childVCs.count;
    int i = 0;
    for (UIViewController *vc in childVCs) {
        [self addChildViewController:vc];
        if (_isAddAllView) {
            vc.view.frame = CGRectMake(i * self.contentView.width, 0, self.contentView.width, self.contentView.height);
            [self.contentView addSubview:vc.view];
            i++;
        }
        
    }

    for (int j = 0; j<items.count ; j++) {
        AllMyBtn *pageBtn = [AllMyBtn initNoBackgroundBtnTitle:items[j] andTitleColor:_btnNomalColor andBlock:^(AllMyBtn *sender) {
            [self showChildVCViewAtIndex:j animete:YES];
            _index = j;
        }];
        pageBtn.titleLabel.font = [UIFont systemFontOfSize:12];
        pageBtn.tag = j+1000;
        pageBtn.frame = CGRectMake(j*self.pagesView.width/items.count, 5, self.pagesView.width/items.count, self.pagesView.height-8);
        
        [self.pagesView addSubview:pageBtn];
    }
    self.lineImgV.frame = CGRectMake(0, self.pagesView.height-2, SCREEN_WIDTH/items.count-20, 2);
    self.lineImgV.centerX = self.pagesView.width/childVCs.count/2.0;
    self.contentView.contentSize = CGSizeMake(childVCs.count * self.view.width, 0);
    [self showChildVCViewAtIndex:0 animete:YES];
}


- (void)showChildVCViewAtIndex:(NSInteger)index animete:(BOOL)animete{
    [self.view endEditing:YES];
    if (self.childViewControllers.count == 0 || index < 0 || index > self.childViewControllers.count - 1) {
        return;
    }
    UIViewController *vc = self.childViewControllers[index];
    if (![vc.view isDescendantOfView:self.contentView]) {
        vc.view.frame = CGRectMake(index * self.contentView.width, 0, self.contentView.width, self.contentView.height);
        [self.contentView addSubview:vc.view];
    }
    
    // 滑动到对应位置
    [self.contentView setContentOffset:CGPointMake(index * self.contentView.width, 0) animated:YES];
    

        [self animeteWithIndex:index animete:animete];
  
    
    
}

//停止滚动
- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView{
    NSInteger index = self.contentView.contentOffset.x/self.contentView.width;
    UIViewController *vc = self.childViewControllers[index];
    if (![vc.view isDescendantOfView:self.contentView]) {
        vc.view.frame = CGRectMake(index * self.contentView.width, 0, self.contentView.width, self.contentView.height);
        [self.contentView addSubview:vc.view];
    }
    self.index = index;
    [self animeteWithIndex:index animete:YES];
}

-(void)animeteWithIndex:(NSInteger)index animete:(BOOL)animete{
    if (animete) {
        [UIView animateWithDuration:0.3 animations:^{
            [self changeBtnIndex:index];
        }];
    }else {
        [self changeBtnIndex:index];
    }
    
}

-(void)changeBtnIndex:(NSInteger)index {
    self.lineImgV.centerX = self.pagesView.width/self.allCount/2.0 + self.pagesView.width/self.allCount*index;
    for (UIView *view in self.pagesView.subviews) {
        if ([view isKindOfClass: [AllMyBtn class]]) {
            AllMyBtn *btn = (AllMyBtn *)view;
            if (btn.tag == index + 1000) {
                btn.titleLabel.font = [UIFont boldSystemFontOfSize:16];
                [btn setTitleColor:_btnSelctColor forState:UIControlStateNormal];
            }else{
                btn.titleLabel.font = [UIFont systemFontOfSize:15];
                [btn setTitleColor:_btnNomalColor forState:UIControlStateNormal];
            }
        }
        
    }
}

-(NSInteger)index {
    if (!_index) {
        _index = 0;
    }
    return _index;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end

