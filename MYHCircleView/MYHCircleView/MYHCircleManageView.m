//
//  MYHCircleManageView.m
//  MYHCircleView
//  作者Github地址：https://github.com/minyahui
//  作者博客地址：http://www.cnblogs.com/myh1036166261/
//  作者邮箱：18871573674@163.com
//  Created by yyy－mac on 2016/12/7.
//  Copyright © 2016年 minyahui. All rights reserved.
//
#define MYHDeviceWidth [UIScreen mainScreen].bounds.size.width
#define MYHDeviceHeight [UIScreen mainScreen].bounds.size.height
#import "MYHCircleManageView.h"



@interface MYHCircleManageView()
{
    MYHCircleView *circleView;
    id delegate;
}
@property (nonatomic,assign) CGFloat Radius;
@property (nonatomic,assign) CGFloat PIE_HEIGHT;
@end
@implementation MYHCircleManageView
-(instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = [UIColor clearColor];
        if (MYHDeviceWidth==320&&MYHDeviceHeight == 480) {
            self.Radius = 40.5;
            self.PIE_HEIGHT = frame.size.height;
        }else if (MYHDeviceWidth == 320 && MYHDeviceHeight == 568){
            self.Radius = 40.5;
            self.PIE_HEIGHT = frame.size.height;
        }else if (MYHDeviceHeight == 667 && MYHDeviceWidth == 375){
            self.Radius = 45.5;
            self.PIE_HEIGHT = frame.size.height;
        }else if (MYHDeviceHeight == 736 && MYHDeviceWidth == 414){
            self.Radius = 50.5;
            self.PIE_HEIGHT = frame.size.height;
        }else{
            self.Radius = 50.5;
            self.PIE_HEIGHT = frame.size.height;
        }
    }
    return self;
}
-(void)loadDataArray:(NSArray *)dataArray withType:(MYHCircleManageViewType)type
{
    [circleView removeFromSuperview];
    circleView = nil;
    circleView = [[MYHCircleView alloc]initWithFrame:CGRectMake(0, 0, self.frame.size.width, self.PIE_HEIGHT) andWithDataArray:dataArray andWithCircleRadius:self.Radius type:type];
    circleView.backgroundColor = [UIColor clearColor];
    [self addSubview:circleView];
}

@end
