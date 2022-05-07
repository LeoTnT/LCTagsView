//
//  LCTagsView.h
//  LCTgasFrameDemo
//
//  Created by 李超 on 2022/5/7.
//

#import <UIKit/UIKit.h>
#import "LCTagsFrame.h"

NS_ASSUME_NONNULL_BEGIN

@interface LCTagsView : UIView

/** 如需自定义, 传入该frame */
@property (nonatomic, strong) LCTagsFrame *tagsFrame;

- (instancetype)initWithTgas:(NSArray *)tags;
- (instancetype)initWithTgas:(NSArray *)tags tagsFrame:(LCTagsFrame *)tagsFrame;

@end

NS_ASSUME_NONNULL_END
