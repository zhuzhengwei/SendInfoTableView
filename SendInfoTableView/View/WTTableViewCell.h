//
//  WTTableViewCell.h
//  SendInfoTableView
//
//  Created by 孙文强 on 16/5/14.
//  Copyright © 2016年 Happy Day. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WTModel.h"
@interface WTTableViewCell : UITableViewCell
{
    UIView *leftView, *lineView;
    UILabel *nameLb, *contentLb;
}

- (void)updateCellWithData:(WTModel *)model;

@end
