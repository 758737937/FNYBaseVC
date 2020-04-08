//
//  FNYBaseCollectionViewController.h
//  Fny
//
//  Created by fny on 2019/10/31.
//  Copyright © 2019 FNYBaseVC Co. Ltd. All rights reserved.
//

#import "FNYBaseViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface FNYBaseCollectionViewController : FNYBaseViewController<UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout>

///主视图
@property(nonatomic,strong)UICollectionView *collectionView;

///布局
@property(nonatomic,strong)UICollectionViewFlowLayout *layout;

@property (nonatomic,strong)NSMutableArray *dataArr;

@property (nonatomic,assign)int page;

- (void)refresh;

- (void)refreshMore;

-(void)endRefresh;

-(void)requestDataSource;

@end

NS_ASSUME_NONNULL_END
