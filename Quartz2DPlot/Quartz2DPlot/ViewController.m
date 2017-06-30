//
//  ViewController.m
//  Quartz2DPlot
//
//  Created by 赵瑞生 on 2017/6/30.
//  Copyright © 2017年 赵瑞生. All rights reserved.
//

#import "ViewController.h"
#import "TableViewCell.h"
#import "BasicViewController.h"

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, weak) UITableView *tableView;

@property (nonatomic, copy) NSArray *dataArray;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.tableView reloadData];
    
}



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSString *title = self.dataArray[indexPath.row];
    static NSString *cellName = @"cell";
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellName];
    if (!cell) {
        cell = [[TableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellName];
        
    }
    cell.textLabel.text = title;
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    switch (indexPath.row) {
        case 0:
        {
            BasicViewController *controller = [[BasicViewController alloc] init];
            UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:controller];
            [self presentViewController:nav animated:YES completion:nil];
            
        }
            break;
            
        default:
            break;
    }
}



- (NSArray *)dataArray {
    if (_dataArray == nil) {
        NSArray *dataArray = @[@"基本图形", @"渲染", @"饼状图", @"柱状图", @"扇形图"];
        _dataArray = dataArray;
    }
    return _dataArray;
}

- (UITableView *)tableView {
    if (_tableView == nil) {
        
        UITableView *tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        tableView.delegate = self;
        tableView.dataSource = self;
        tableView.showsVerticalScrollIndicator = NO;
        tableView.showsHorizontalScrollIndicator = NO;
        _tableView = tableView;
        [self.view addSubview:tableView];
        
        
    }
    return _tableView;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
