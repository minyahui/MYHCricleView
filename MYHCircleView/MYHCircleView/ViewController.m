//
//  ViewController.m
//  MYHCircleView
//
//  Created by yyy－mac on 2016/12/7.
//  Copyright © 2016年 minyahui. All rights reserved.
//

#import "ViewController.h"
#import "MYHCircleManageView.h"

@interface ViewController ()

@end

@implementation ViewController
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.navigationController.navigationBarHidden = true;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    MYHCircleManageView * circleView1 = [[MYHCircleManageView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height/2)];
    [circleView1 loadDataArray:@[@{@"number":@"100",@"color":[UIColor redColor],@"name":@"网购"},
                                 @{@"number":@"300",@"color":[UIColor blueColor],@"name":@"吃饭"},
                                 @{@"number":@"100",@"color":[UIColor colorWithRed:0.27 green:0.74 blue:0.27 alpha:1],@"name":@"娱乐"},
                                 @{@"number":@"300",@"color":[UIColor colorWithRed:0.71 green:0.23 blue:0.71 alpha:1],@"name":@"给女朋友花"},
                                 @{@"number":@"150",@"color":[UIColor colorWithRed:0.49 green:0.85 blue:0.98 alpha:1],@"name":@"买零食"}] withType:MYHCircleManageViewTypeRound];
    [self.view addSubview:circleView1];
     MYHCircleManageView * circleView2 = [[MYHCircleManageView alloc] initWithFrame:CGRectMake(0, [UIScreen mainScreen].bounds.size.height/2, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height/2)];
    [circleView2 loadDataArray:@[@{@"number":@"100",@"color":[UIColor redColor],@"name":@"网购"},
                                 @{@"number":@"300",@"color":[UIColor blueColor],@"name":@"吃饭"},
                                 @{@"number":@"100",@"color":[UIColor colorWithRed:0.27 green:0.74 blue:0.27 alpha:1],@"name":@"娱乐"},
                                 @{@"number":@"300",@"color":[UIColor colorWithRed:0.71 green:0.23 blue:0.71 alpha:1],@"name":@"给女朋友花"},
                                 @{@"number":@"150",@"color":[UIColor colorWithRed:0.49 green:0.85 blue:0.98 alpha:1],@"name":@"买零食"}] withType:MYHCircleManageViewTypeArc];
    [self.view addSubview:circleView2];
}

@end
