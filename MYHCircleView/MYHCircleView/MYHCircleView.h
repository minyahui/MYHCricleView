//
//  MYHCircleView.h
//  MYHCircleView
//  作者Github地址：https://github.com/minyahui
//  作者博客地址：http://www.cnblogs.com/myh1036166261/
//  作者邮箱：18871573674@163.com
//  Created by yyy－mac on 2016/12/7.
//  Copyright © 2016年 minyahui. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef NS_OPTIONS(NSUInteger, MYHCircleManageViewType) {
    MYHCircleManageViewTypeArc, //圆弧
    MYHCircleManageViewTypeRound //圆
};
@interface MYHCircleView : UIView
@property(nonatomic , assign) CGRect fFrame;
@property(nonatomic , strong) NSMutableArray *dataArray; //数据数组
@property(nonatomic , assign) CGFloat circleRadius;//半径
//初始化
-(instancetype)initWithFrame:(CGRect)frame andWithDataArray:(NSArray *)dataArr andWithCircleRadius:(CGFloat)circleRadius type:(MYHCircleManageViewType)type;
@end
