//
//  MYHCircleManageView.h
//  MYHCircleView
//  作者Github地址：https://github.com/minyahui
//  作者博客地址：http://www.cnblogs.com/myh1036166261/
//  作者邮箱：18871573674@163.com
//  Created by yyy－mac on 2016/12/7.
//  Copyright © 2016年 minyahui. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MYHCircleView.h"

@interface MYHCircleManageView : UIView
-(instancetype)initWithFrame:(CGRect)frame;
-(void)loadDataArray:(NSArray *)dataArray withType:(MYHCircleManageViewType)type;
@end
