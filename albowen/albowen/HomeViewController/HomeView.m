//
//  HomeView.m
//  albowen
//
//  Created by 关云秀 on 2019/1/13.
//  Copyright © 2019 xuannalisha. All rights reserved.
//

#import "HomeView.h"
#import "MainTableViewCell.h"
#import "HomeTableViewCell.h"

@implementation HomeView

- (instancetype)init
{
    self = [super init];
    if (self) {
        _allResouce = [NSMutableArray array];
        _tableView = [[UITableView alloc]initWithFrame:CGRectZero style:UITableViewStylePlain];
        _tableView.dataSource =self;
        _tableView.delegate =self;
        _tableView.separatorColor =KCOLOR(251, 251, 251);
        _tableView.estimatedRowHeight =300;
        [self addSubview:_tableView];
        [_tableView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.equalTo(self);
            make.height.equalTo(self);
        }];
        [self addHistoryData];
    }
    return self;
}

/**
 *  刷新数据
 */
- (void)addHistoryData{
    KWeakSelf;
    _tableView.mj_header =[MJRefreshNormalHeader headerWithRefreshingBlock:^{
        // 马上进入刷新状态
        [weakSelf.tableView.mj_header beginRefreshing];
    }];
}

- (void)updateData:(NSArray*)resourceData {
    [_allResouce removeAllObjects];
    [_allResouce addObjectsFromArray:resourceData];
    [_tableView.mj_header endRefreshing];
    [_tableView reloadData];
}

#pragma mark - tableViewDelegateBegin

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 2;
}



- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    
    return 10.f;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
    if (indexPath.section ==0) {
        MainTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MainTableViewCell"];
        if (cell == nil) {
            cell = [[MainTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"MainTableViewCell"];
        }
         return cell;
    }
    if (indexPath.section ==1) {
        HomeTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"HomeTableViewCell"];
        if (cell == nil) {
            cell = [[HomeTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"HomeTableViewCell"];
        }
        return cell;
    }
    return [UITableViewCell new];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];

}

@end
