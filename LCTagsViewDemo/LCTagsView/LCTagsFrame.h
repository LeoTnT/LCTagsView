//
//  FDTagsFrame.h
//  App3.0
//
//  Created by lichao on 2018/10/19.
//  Copyright © 2018年 mac. All rights reserved.
//

#import <UIKit/UIKit.h>

#define appWidth [UIScreen mainScreen].bounds.size.width
#define appHeight [UIScreen mainScreen].bounds.size.height
#define TagsTitleFont [UIFont systemFontOfSize:14]

@interface LCTagsFrame : NSObject

/************  传入参数  ************/
/**
 必传参数, 如需自定义高度/间距 等属性, 最后一步设置tagsArray
 */
/** 标签标题数组(根据数组的文字进行计算) */
@property (nonatomic, strong) NSArray *tagsArray;

/**
 非必传参数
 */
/** 标签的高度 default is 30 */
@property (nonatomic, assign) CGFloat tagsHeight;
/** 标签间距 default is 10 */
@property (nonatomic, assign) CGFloat tagsMargin;
/** 标签行间距 default is 10 */
@property (nonatomic, assign) CGFloat tagsLineSpacing;
/** 标签最小内边距 default is 10 */
@property (nonatomic, assign) CGFloat tagsMinPadding;

/************  可使用的标签数组的属性  ************/
/** 标签frame数组 */
@property (nonatomic, strong) NSMutableArray *tagsFrames;
/** 全部标签的总高度 */
@property (nonatomic, assign) CGFloat tagsTotalHeight;

@end
