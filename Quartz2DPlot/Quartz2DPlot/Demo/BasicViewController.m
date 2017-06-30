//
//  BasicViewController.m
//  Quartz2DPlot
//
//  Created by 赵瑞生 on 2017/6/30.
//  Copyright © 2017年 赵瑞生. All rights reserved.
//

#import "BasicViewController.h"
#import "BasicView.h"

@interface BasicViewController ()

@end

@implementation BasicViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor whiteColor];
    
    BasicView *view = [[BasicView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:view];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
