//
//  WTHeadSettepView.h
//  SendInfoTableView
//
//  Created by 孙文强 on 16/5/14.
//  Copyright © 2016年 Happy Day. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WTHeadSettepView : UIView

- (instancetype)initWithContons:(NSArray *)headArrs
                          title:(NSString *)title
                           date:(NSString *)date;

@property (nonatomic, strong) NSArray *headArr;
@property (nonatomic, copy) void (^headSettepToIndex)(NSInteger);

@end
