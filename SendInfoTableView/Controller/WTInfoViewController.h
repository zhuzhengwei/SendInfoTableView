//
//  WTInfoViewController.h
//  SendInfoTableView
//
//  Created by 孙文强 on 16/5/14.
//  Copyright © 2016年 Happy Day. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, WTDataType) {
    
    DataTypeOne = 0,
    DataTypeTwo,
    DataTypeSheer,
    DataTypeFor,
    DataTypeFive,
};

@interface WTInfoViewController : UIViewController
{
    NSMutableArray *dataArr;

    UITableView *_tableView;
}

@property (nonatomic) WTDataType type;


@end
