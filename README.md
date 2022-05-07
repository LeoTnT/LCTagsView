# LCTagsView
不规则大小tags标签显示View

使用方法
```
#import "ViewController.h"
#import "LCTagsView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor systemGroupedBackgroundColor];
    
    //data
    NSArray *tagsArr = @[@"Objective-C", @"Swift", @"java", @"C", @"C++", @"C#", @"PHP", @"Python", @"Ruby", @"JavaScript", @"Vue"];
    
//    //自定义属性
//    LCTagsFrame *tagsFrame = [[LCTagsFrame alloc] init];
//    tagsFrame.tagsHeight = 50;//单个标签的高度
//    tagsFrame.tagsMargin = 20;//标签间距
//    tagsFrame.tagsLineSpacing = 20;//标签行间距
    
    //LCTagsView的使用
    LCTagsView *tagsV = [[LCTagsView alloc] initWithTgas:tagsArr];
//    LCTagsView *tagsV = [[LCTagsView alloc] initWithTgas:tagsArr tagsFrame:tagsFrame];
    CGRect frame = tagsV.frame;
    frame.origin.y = 100;
    tagsV.frame = frame;
    [self.view addSubview:tagsV];
}
```
