//
//  WTHeadSettepView.m
//  SendInfoTableView
//
//  Created by 孙文强 on 16/5/14.
//  Copyright © 2016年 Happy Day. All rights reserved.
//

#import "WTHeadSettepView.h"

@implementation WTHeadSettepView

UILabel* (^createLabel)(CGRect frame, NSString *title, CGFloat font) = ^(CGRect frame, NSString *title, CGFloat font) {
    
    UILabel *label = [[UILabel alloc] initWithFrame:frame];
    label.text = title;
    label.font = [UIFont systemFontOfSize:font];
    label.textAlignment = NSTextAlignmentCenter;
    
    return label;
};

- (instancetype)initWithContons:(NSArray *)headArrs
                          title:(NSString *)title
                           date:(NSString *)date {

    self = [super init];

    if (self) {
        
        UILabel *titleLb = createLabel(CGRectMake((SCREEN_WIDTH - 188)/2, 10, 188, 30), title, 18);
        [self addSubview:titleLb];
        
        UILabel *dateLb = createLabel(CGRectMake(SCREEN_WIDTH/2 + 8, 50, 195, 25), date, 15);
        [self addSubview:dateLb];
        
        _headArr = headArrs;
        int width = SCREEN_WIDTH/5;
        for (int i = 0; i < headArrs.count; i++) {
            
            UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
            button.frame = CGRectMake((width + 2) * i, CGRectGetHeight(titleLb.frame) + CGRectGetHeight(dateLb.frame) + 30, width, 30);
            if (i == 0) {
                
                button.backgroundColor = [UIColor orangeColor];
            }else{
            
                button.backgroundColor = [UIColor blueColor];
            }
            
            [button setTitle:headArrs[i] forState:UIControlStateNormal];
            [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
            [button addTarget:self action:@selector(settepClick:) forControlEvents:UIControlEventTouchUpInside];
            [self addSubview:button];
            
            button.tag = BUTTON_TAG + i;
        }
    }

    return self;
}

- (void)settepClick:(UIButton *)sender {

    for (int i = BUTTON_TAG; i < (BUTTON_TAG + _headArr.count); i++) {
        
        UIButton *button = (UIButton *)[self viewWithTag:i];
        
        [button setBackgroundColor:[UIColor blueColor]];
    }
    
    [sender setBackgroundColor:[UIColor orangeColor]];

    if (self.headSettepToIndex) {
        NSInteger index = sender.tag-BUTTON_TAG;
        self.headSettepToIndex(index);
    }
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
