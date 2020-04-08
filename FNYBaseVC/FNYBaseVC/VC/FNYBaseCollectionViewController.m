//
//  FNYBaseCollectionViewController.m
//  Fny
//
//  Created by fny on 2019/10/31.
//  Copyright © 2019 FNYBaseVC Co. Ltd. All rights reserved.
//

#import "FNYBaseCollectionViewController.h"
#import "DefineHeader.h"
#import "UIView+Extension.h"
@interface FNYBaseCollectionViewController ()

@end

@implementation FNYBaseCollectionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.collectionView];
}


-(void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    self.collectionView.frame = self.view.bounds;
    self.collectionView.height -= kTabBarArcHeight;
}


#pragma mark - UICollectionViewDelegate,UICollectionViewDataSource
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return self.dataArr.count;
}

-(UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section
{
    return UIEdgeInsetsMake(10, 10, 10, 10);
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    return nil;
}



-(void)refresh {
    self.page = 1;
    [self requestDataSource];
}
-(void)refreshMore{
    self.page ++;
    [self requestDataSource];
}
-(void)endRefresh {
//    [self.collectionView.mj_header endRefreshing];
//    [self.collectionView.mj_footer endRefreshing];
}

-(void)requestDataSource {
    
}



-(UICollectionView *)collectionView {
    if (!_collectionView) {
        _collectionView = [[UICollectionView alloc]initWithFrame:self.view.bounds collectionViewLayout:self.layout];
        _collectionView.delegate = self;
        _collectionView.dataSource = self;
//        _collectionView.mj_header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(refresh)];
//        _collectionView.mj_footer=[MJRefreshBackNormalFooter footerWithRefreshingTarget:self refreshingAction:@selector(refreshMore)];
        _collectionView.backgroundColor = MainBGColor;
//        _collectionView.emptyDataSetSource   = self;
//        _collectionView.emptyDataSetDelegate = self;
    }
    return _collectionView;
}


-(UICollectionViewFlowLayout *)layout {
    if (!_layout) {
        _layout = [[UICollectionViewFlowLayout alloc]init];
        _layout.minimumLineSpacing = 10;
        _layout.minimumInteritemSpacing = 10;
    }
    return _layout;
}

-(NSMutableArray *)dataArr {
    if (!_dataArr) {
        _dataArr = [NSMutableArray new];
    }
    return _dataArr;
}

@end
