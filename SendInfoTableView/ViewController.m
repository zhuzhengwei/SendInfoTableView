//
//  ViewController.m
//  SendInfoTableView
//
//  Created by 孙文强 on 16/5/14.
//  Copyright © 2016年 Happy Day. All rights reserved.
//

#import "ViewController.h"
#import "WTModel.h"
#import "WTHeadSettepView.h"
#import "WTInfoViewController.h"


@interface ViewController ()
{
    UIScrollView *infoScrollView;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    WeakSelf;
    WTHeadSettepView *settepView = [[WTHeadSettepView alloc] initWithContons:@[@"基本信息",@"变更记录",@"分级机构",@"商标专利",@"信用记录"] title:@"苏州XX精密豪华公司" date:@"最新变更:2015年8月7号"];
    settepView.frame = CGRectMake(0, 64, SCREEN_WIDTH, 130);
    [self.view addSubview:settepView];
    
    settepView.headSettepToIndex = ^(NSInteger index) {
    
        [weakSelf settepScrollIndexTable:index];
    };
    
    [self createTableViewVC];
}

- (void)settepScrollIndexTable:(NSInteger)index {

    switch (index) {
        case 0:
            
            [infoScrollView setContentOffset:CGPointMake(0, 0) animated:false];
            
            break;
        case 1:
            [infoScrollView setContentOffset:CGPointMake(SCREEN_WIDTH, 0) animated:false];

            break;
        case 2:
            [infoScrollView setContentOffset:CGPointMake(SCREEN_WIDTH*2, 0) animated:false];

            break;
        case 3:
            [infoScrollView setContentOffset:CGPointMake(SCREEN_WIDTH*3, 0) animated:false];

            break;
        case 4:
            [infoScrollView setContentOffset:CGPointMake(SCREEN_WIDTH*4, 0) animated:false];

            break;

        default:
            break;
    }
}

- (void)createTableViewVC{

    CGFloat scrollViewHeight = SCREEN_HEIGHT - 64 -130;
    infoScrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 64 + 130, SCREEN_WIDTH, scrollViewHeight)];
    infoScrollView.showsVerticalScrollIndicator = false;
    infoScrollView.showsHorizontalScrollIndicator = false;
    infoScrollView.bounces = true;
    infoScrollView.scrollEnabled = false;
    [infoScrollView setContentSize:CGSizeMake(SCREEN_WIDTH *4, SCREEN_HEIGHT)];
    [self.view addSubview:infoScrollView];
    
    
    WTInfoViewController *tbVC1 = [[WTInfoViewController alloc] init];
    tbVC1.view.frame = CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT);
    tbVC1.type  = DataTypeOne;
    [infoScrollView addSubview:tbVC1.view];
    [self addChildViewController:tbVC1];
    
    
    WTInfoViewController *tbVC2 = [[WTInfoViewController alloc] init];
    tbVC2.view.frame = CGRectMake(SCREEN_WIDTH, 0, SCREEN_WIDTH, SCREEN_HEIGHT);
    tbVC2.type = DataTypeTwo;
    [infoScrollView addSubview:tbVC2.view];
    [self addChildViewController:tbVC2];

    
    WTInfoViewController *tbVC3 = [[WTInfoViewController alloc] init];
    tbVC3.view.frame = CGRectMake(SCREEN_WIDTH*2, 0, SCREEN_WIDTH, SCREEN_HEIGHT);
    tbVC3.type = DataTypeSheer;
    [infoScrollView addSubview:tbVC3.view];
    [self addChildViewController:tbVC3];

    
    WTInfoViewController *tbVC4 = [[WTInfoViewController alloc] init];
    tbVC4.view.frame = CGRectMake(SCREEN_WIDTH *3, 0, SCREEN_WIDTH, SCREEN_HEIGHT);
    tbVC4.type = DataTypeFor;
    [infoScrollView addSubview:tbVC4.view];
    [self addChildViewController:tbVC4];

    
    WTInfoViewController *tbVC5 = [[WTInfoViewController alloc] init];
    tbVC5.view.frame = CGRectMake(SCREEN_WIDTH*4, 0, SCREEN_WIDTH, SCREEN_HEIGHT);
    tbVC5.type = DataTypeFive;
    [infoScrollView addSubview:tbVC5.view];
    [self addChildViewController:tbVC5];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
