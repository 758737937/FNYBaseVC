//
//  FNYBaseTableViewController.m
//  Fny
//
//  Created by fny on 2019/10/31.
//  Copyright © 2019 FNYBaseVC Co. Ltd. All rights reserved.
//

#import "FNYBaseTableViewController.h"

@interface FNYBaseTableViewController ()


@end

@implementation FNYBaseTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self.view addSubview:self.tableView];
    self.tableView.frame = self.view.bounds;
    self.tableView.height -= kTabBarArcHeight;
    [self.tableView setSeparatorColor:MainCellLineColor];
//
//    self.tableView.mj_header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(refresh)];
//    self.tableView.mj_footer=[MJRefreshBackNormalFooter footerWithRefreshingTarget:self refreshingAction:@selector(refreshMore)];
    
    if ([self.tableView respondsToSelector:@selector(setSeparatorInset:)]) {
        
        [self.tableView setSeparatorInset:UIEdgeInsetsZero];
        
    }
    if ([self.tableView respondsToSelector:@selector(setLayoutMargins:)]) {
        
        [self.tableView setLayoutMargins:UIEdgeInsetsZero];
        
    }
    self.tableView.estimatedRowHeight = 1.1;
    
}


-(void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    
    self.tableView.frame = self.view.bounds;
    self.tableView.height -= kTabBarArcHeight;
}

-(UITableView *)tableView {
    if (!_tableView) {
        _tableView = [UITableView new];
        _tableView.delegate = self;
        _tableView.dataSource = self;
//        _tableView.separatorStyle = UITableViewCellEditingStyleNone;
        _tableView.backgroundColor = UIColor.clearColor;
        _tableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];
        
        NSString *version = [UIDevice currentDevice].systemVersion;
        if (version.doubleValue >= 11.0) {
            _tableView.estimatedSectionHeaderHeight = 0.1;
            _tableView.estimatedSectionFooterHeight = 0.1;
            _tableView.sectionFooterHeight = 0.1;
            _tableView.sectionHeaderHeight = 0.1;
            // 针对 11.0 以上的iOS系统进行处理
        } else {
            _tableView.estimatedSectionHeaderHeight = 1.1;
            _tableView.estimatedSectionFooterHeight = 1.1;
            _tableView.sectionFooterHeight = 1.1;
            _tableView.sectionHeaderHeight = 1.1;
            // 针对 11.0 以下的iOS系统进行处理
        }
        
//        _tableView.emptyDataSetSource = self;
//        _tableView.emptyDataSetDelegate = self;
        
    

    }
    return _tableView;
}

-(NSMutableArray *)dataArr {
    if (!_dataArr) {
        _dataArr = [NSMutableArray new];
    }
    return _dataArr;
}

-(void)refresh {
    
    self.page = 1;    
    [self requestDataSource];
//    self.showEmpty = YES;
}
-(void)refreshMore{
   
    self.page ++;
    [self requestDataSource];
}

-(void)endRefrsh {
    
//    [self.tableView.mj_header endRefreshing];
//    [self.tableView.mj_footer endRefreshing];
    
}

-(void)requestDataSource {
    
}
    

/**
 *  数据源为空时是否渲染和显示 (默认为 YES)
 */
- (BOOL)emptyDataSetShouldDisplay:(UIScrollView *)scrollView {
    
    return self.showEmpty;
}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return self.dataArr.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    return nil;
}

- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath{
    
    if ([cell respondsToSelector:@selector(setSeparatorInset:)]) {
        [cell setSeparatorInset:UIEdgeInsetsZero];
    }
    
    if ([cell respondsToSelector:@selector(setLayoutMargins:)]) {
        [cell setLayoutMargins:UIEdgeInsetsZero];
    }
}



@end
