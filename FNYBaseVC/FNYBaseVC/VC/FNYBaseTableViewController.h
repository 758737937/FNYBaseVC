//
//  FNYBaseTableViewController.h
//  Fny
//
//  Created by fny on 2019/10/31.
//  Copyright © 2019 FNYBaseVC Co. Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FNYBaseViewController.h"
///注册cell
#define REGISTERNIB(a) registerNib:[UINib nibWithNibName:a bundle:nil] forCellReuseIdentifier:a

#define SELFREGISTERNIB(a) [self.tableView registerNib:[UINib nibWithNibName:a bundle:nil] forCellReuseIdentifier:a]
///注册cell
#define DequeueCell(a) [tableView dequeueReusableCellWithIdentifier:a forIndexPath:indexPath]

NS_ASSUME_NONNULL_BEGIN

@interface FNYBaseTableViewController : FNYBaseViewController<UITableViewDelegate,UITableViewDataSource>
///主视图
@property (nonatomic, strong)UITableView *tableView;
///数组数据
@property (nonatomic, strong)NSMutableArray *dataArr;

@property (nonatomic, assign)int page;

///是否显示无数据图案文字
@property(nonatomic,assign)BOOL showEmpty;

///刷新（需重写）
-(void)refresh;

///加载更多（需重写）
-(void)refreshMore;

-(void)endRefrsh;
///请求网络数据
-(void)requestDataSource;

@end

NS_ASSUME_NONNULL_END
