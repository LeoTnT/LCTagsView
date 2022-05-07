//
//  LCTagsView.m
//  LCTgasFrameDemo
//
//  Created by 李超 on 2022/5/7.
//

#import "LCTagsView.h"

@interface LCTagsView ()

@property (nonatomic, strong) NSArray *tagsArr;

@end

@implementation LCTagsView

- (instancetype)initWithTgas:(NSArray *)tags {
    if (self = [super init]) {
        self.tagsArr = tags;
        
        [self setUpTagsFrame];
        [self setUpTagsView];
    }
    return self;
}

- (instancetype)initWithTgas:(NSArray *)tags tagsFrame:(LCTagsFrame *)tagsFrame {
    if (self = [super init]) {
        self.tagsArr = tags;
        self.tagsFrame = tagsFrame;
        
        [self setUpTagsFrame];
        [self setUpTagsView];
    }
    return self;
}

- (instancetype)init {
    if (self = [super init]) {
        [self setUpTagsView];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self setUpTagsView];
    }
    return self;
}

- (void)setUpTagsFrame {
    //LCTagsFrame
    if (self.tagsFrame == nil) {
        self.tagsFrame = [[LCTagsFrame alloc] init];        
    }
    self.tagsFrame.tagsArray = self.tagsArr;
}

- (void)setUpTagsView {
    self.backgroundColor = [UIColor whiteColor];
    self.frame = CGRectMake(0, 0, appWidth, self.tagsFrame.tagsTotalHeight);

    for (NSInteger i=0; i < self.tagsArr.count; i++) {
        UIButton *tagsBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        tagsBtn.titleLabel.font = TagsTitleFont;
        [tagsBtn setTitleColor:[UIColor darkGrayColor] forState:UIControlStateNormal];
        //标题
        NSString *title = self.tagsArr[i];
        [tagsBtn setTitle:title forState:UIControlStateNormal];

        [tagsBtn setBackgroundColor:[UIColor whiteColor]];
        tagsBtn.layer.borderColor = [UIColor darkGrayColor].CGColor;
        tagsBtn.layer.borderWidth = 1;
        tagsBtn.layer.cornerRadius = 4;
        tagsBtn.layer.masksToBounds = YES;

        tagsBtn.frame = CGRectFromString(self.tagsFrame.tagsFrames[i]);
        tagsBtn.layer.cornerRadius = tagsBtn.frame.size.height/2;
        tagsBtn.layer.masksToBounds = YES;
        
        tagsBtn.tag = i;
//        [tagsBtn addTarget:self action:@selector(hotBtnClick:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:tagsBtn];
    }
}

@end
