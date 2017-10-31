//  代码地址: https://github.com/iphone5solo/PYPhotosView
//  代码地址: http://code4app.com/thread-8612-1-1.html
//  Created by CoderKo1o.
//  Copyright © 2016年 iphone5solo. All rights reserved.
//

#import "PYExampleViewController.h"
#import "AppDelegate.h"
#import "PYPhotosView.h"
#import "PYPublishExampleViewController.h"
#import "PYPhotoBrowseView.h"

@implementation PYExampleViewController

// 初始化
- (void)setup
{
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"发布" style:UIBarButtonItemStyleDone target:self action:@selector(publishDidCicked)];
    self.title = @"示例控制器";
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 初始化
    [self setup];
    
    // 1. 创建图片链接数组
    NSMutableArray *thumbnailImageUrls = [NSMutableArray array];
    // 添加图片(缩略图)链接
    [thumbnailImageUrls addObject:@"http://ww3.sinaimg.cn/thumbnail/006ka0Iygw1f6bqm7zukpj30g60kzdi2.jpg"];
    [thumbnailImageUrls addObject:@"http://ww1.sinaimg.cn/thumbnail/61b69811gw1f6bqb1bfd2j20b4095dfy.jpg"];
    [thumbnailImageUrls addObject:@"http://ww1.sinaimg.cn/thumbnail/54477ddfgw1f6bqkbanqoj20ku0rsn4d.jpg"];
    [thumbnailImageUrls addObject:@"http://ww4.sinaimg.cn/thumbnail/006ka0Iygw1f6b8gpwr2tj30bc0bqmyz.jpg"];
    [thumbnailImageUrls addObject:@"http://ww2.sinaimg.cn/thumbnail/9c2b5f31jw1f6bqtinmpyj20dw0ae76e.jpg"];
    [thumbnailImageUrls addObject:@"http://ww1.sinaimg.cn/thumbnail/536e7093jw1f6bqdj3lpjj20va134ana.jpg"];
    [thumbnailImageUrls addObject:@"http://ww1.sinaimg.cn/thumbnail/75b1a75fjw1f6bqn35ij6j20ck0g8jtf.jpg"];
    [thumbnailImageUrls addObject:@"http://ww4.sinaimg.cn/bmiddle/406ef017jw1ec40av2nscj20ip4p0b29.jpg"];
    [thumbnailImageUrls addObject:@"http://ww1.sinaimg.cn/thumbnail/86afb21egw1f6bq3lq0itj20gg0c2myt.jpg"];
    
    // 1.2 创建图片原图链接数组
    NSMutableArray *originalImageUrls = [NSMutableArray array];
    // 添加图片(原图)链接
    [originalImageUrls addObject:@"http://ww3.sinaimg.cn/large/006ka0Iygw1f6bqm7zukpj30g60kzdi2.jpg"];
    [originalImageUrls addObject:@"http://ww1.sinaimg.cn/large/61b69811gw1f6bqb1bfd2j20b4095dfy.jpg"];
    [originalImageUrls addObject:@"http://ww1.sinaimg.cn/large/54477ddfgw1f6bqkbanqoj20ku0rsn4d.jpg"];
    [originalImageUrls addObject:@"http://ww4.sinaimg.cn/large/006ka0Iygw1f6b8gpwr2tj30bc0bqmyz.jpg"];
    [originalImageUrls addObject:@"http://ww2.sinaimg.cn/large/9c2b5f31jw1f6bqtinmpyj20dw0ae76e.jpg"];
    [originalImageUrls addObject:@"http://ww1.sinaimg.cn/large/536e7093jw1f6bqdj3lpjj20va134ana.jpg"];
    [originalImageUrls addObject:@"http://ww1.sinaimg.cn/large/75b1a75fjw1f6bqn35ij6j20ck0g8jtf.jpg"];
    [originalImageUrls addObject:@"http://ww4.sinaimg.cn/bmiddle/406ef017jw1ec40av2nscj20ip4p0b29.jpg"];
    [originalImageUrls addObject:@"http://ww1.sinaimg.cn/large/86afb21egw1f6bq3lq0itj20gg0c2myt.jpg"];
    
//    // 2.1 创建一个流水布局photosView(默认为流水布局)
//    PYPhotosView *flowPhotosView = [PYPhotosView photosView];
//    // 设置缩略图数组
//    flowPhotosView.thumbnailUrls = thumbnailImageUrls;
//    // 设置原图地址
//    flowPhotosView.originalUrls = originalImageUrls;
//    // 设置分页指示类型
//    flowPhotosView.pageType = PYPhotosViewPageTypeLabel;
//    flowPhotosView.py_centerX = self.view.py_centerX;
//    flowPhotosView.py_y = 20 + 64;
    
    // 2.2创建线性布局
    PYPhotosView *linePhotosView = [PYPhotosView photosViewWithThumbnailUrls:thumbnailImageUrls originalUrls:originalImageUrls layoutType:PYPhotosViewLayoutTypeLine];
    // 设置Frame
    linePhotosView.py_y = 80 + PYMargin * 2;
    linePhotosView.py_x = PYMargin;
    linePhotosView.py_width = self.view.py_width - linePhotosView.py_x * 2;
    
    // 3. 添加到指定视图中
//    [self.view addSubview:flowPhotosView];
    [self.view addSubview:linePhotosView];
}

#pragma mark publishDidCicked 
// 点击发布时调用
- (void)publishDidCicked
{
    PYPublishExampleViewController *publishVc = [[PYPublishExampleViewController alloc] init];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:publishVc];
    [self presentViewController:nav animated:YES completion:nil];
}

@end
