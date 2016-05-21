//
//  WTInfoViewController.m
//  SendInfoTableView
//
//  Created by 孙文强 on 16/5/14.
//  Copyright © 2016年 Happy Day. All rights reserved.
//

#import "WTModel.h"
#import "WTTableViewCell.h"
#import "WTInfoViewController.h"

@interface WTInfoViewController ()<UITableViewDelegate,UITableViewDataSource>

@end

@implementation WTInfoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    dataArr = [NSMutableArray array];

    _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    _tableView.tableFooterView = [UIView new];
    [self.view addSubview:_tableView];
        
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setType:(WTDataType)type {
    
    if (type == DataTypeOne) {//基本信息
        
        WTModel *model1 = [WTModel new];
        model1.name = @"企业性质";
        model1.content = @"wqeqeqweqwe";
        
        
        WTModel *model2 = [WTModel new];
        model2.name = @"法定代表";
        model2.content = @"ewqeqwe";
        
        WTModel *model3 = [WTModel new];
        model3.name = @"成立时间";
        model3.content = @"qweqweqac";
        
        WTModel *model4 = [WTModel new];
        model4.name = @"营业期至";
        model4.content = @"xczxczxcxzc";
        
        WTModel *model5 = [WTModel new];
        model5.name = @"注册地址";
        model5.content = @"asdasda";
        
        WTModel *model6 = [WTModel new];
        model6.name = @"注册号";
        model6.content = @"wqewqeq";
        
        WTModel *model7 = [WTModel new];
        model7.name = @"经营范围";
        model7.content = @"dddddddd3322111155555dddddddd3322111155555dddddddd3322111155555dddddddd3322111155555dddddddd3322111155555dddddddd3322111155555dddddddd3322111155555dddddddd3322111155555dddddddd3322111155555dddddddd3322111155555dddddddd3322111155555dddddddd3322111155555dddddddd3322111155555dddddddd3322111155555dddddddd3322111155555dddddddd3322111155555";
        
        [dataArr addObject:model1];
        [dataArr addObject:model2];
        [dataArr addObject:model3];
        [dataArr addObject:model4];
        [dataArr addObject:model5];
        [dataArr addObject:model6];
        [dataArr addObject:model7];
        
    }else if (type == DataTypeTwo) {//变更记录
        
        WTModel *model1 = [WTModel new];
        model1.name = @"变更事项";
        model1.content = @"123asdasd";
        
        
        WTModel *model2 = [WTModel new];
        model2.name = @"变更日期";
        model2.content = @"爱上大水电站c";
        
        WTModel *model3 = [WTModel new];
        model3.name = @"变更前";
        model3.content = @"按时打算打算从宣传宣传宣传车现场宣传按时打算打算从宣传宣传宣传车现场宣按时打算打算从宣传宣传宣传车现场宣按时打算打算从宣传宣传宣传车现场宣按时打算打算从宣传宣传宣传车现场宣按时打算打算从宣传宣传宣传车现场宣按时打算打算从宣传宣传宣传车现场宣按时打算打算从宣传宣传宣传车现场宣按时打算打算从宣传宣传宣传车现场宣按时打算打算从宣传宣传宣传车现场宣按时打算打算从宣传宣传宣传车现场宣按时打算打算从宣传宣传宣传车现场宣按时打算打算从宣传宣传宣传车现场宣";
        
        WTModel *model4 = [WTModel new];
        model4.name = @"变更后";
        model4.content = @"曾多次调查调查调查调查调查调查的曾多次调查调查调查调查调查调查的曾多次调查调查调查调查调查调查的曾多次调查调查调查调查调查调查的曾多次调查调查调查调查调查调查的曾多次调查调查调查调查调查调查的曾多次调查调查调查调查调查调查的曾多次调查调查调查调查调查调查的曾多次调查调查调查调查调查调查的曾多次调查调查调查调查调查调查的曾多次调查调查调查调查调查调查的曾多次调查调查调查调查调查调查的曾多次调查调查调查调查调查调查的曾多次调查调查调查调查调查调查的";
        
        WTModel *model5 = [WTModel new];
        model5.name = @"变更事项";
        model5.content = @"啊实打实大师的";
        
        WTModel *model6 = [WTModel new];
        model6.name = @"变更日期";
        model6.content = @"大神大神大神大神大神的";
        
        WTModel *model7 = [WTModel new];
        model7.name = @"变更前";
        model7.content = @"qweqewqwe";
        
        WTModel *model8 = [WTModel new];
        model8.name = @"变更后";
        model8.content = @"qweqewqwe";
        
        [dataArr addObject:model1];
        [dataArr addObject:model2];
        [dataArr addObject:model3];
        [dataArr addObject:model4];
        [dataArr addObject:model5];
        [dataArr addObject:model6];
        [dataArr addObject:model7];
        [dataArr addObject:model8];
        
    }else if (type == DataTypeSheer) {//分支机构
        
        WTModel *model1 = [WTModel new];
        model1.name = @"1";
        model1.content = @"1231231321313dsada";
        
        
        WTModel *model2 = [WTModel new];
        model2.name = @"2";
        model2.content = @"1231231321313dsada";
        
        WTModel *model3 = [WTModel new];
        model3.name = @"3";
        model3.content = @"1231231321313dsada";
        
        WTModel *model4 = [WTModel new];
        model4.name = @"4";
        model4.content = @"1231231321313dsada";
        
        WTModel *model5 = [WTModel new];
        model5.name = @"5";
        model5.content = @"1231231321313dsada";
        
        WTModel *model6 = [WTModel new];
        model6.name = @"6";
        model6.content = @"1231231321313dsada";
        
        [dataArr addObject:model1];
        [dataArr addObject:model2];
        [dataArr addObject:model3];
        [dataArr addObject:model4];
        [dataArr addObject:model5];
        [dataArr addObject:model6];
        
        
        UIView *(^createHeadView)(void) = ^(){
            
            UIView *headView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, 44)];
            headView.backgroundColor = [UIColor colorWithRed:231/255. green:234/255. blue:234/255. alpha:.9];
            
            UILabel *name1 = [[UILabel alloc] initWithFrame:CGRectMake(SCREEN_WIDTH/5/2-10, 5, 35, 25)];
            name1.text = @"序号";
            name1.textAlignment = NSTextAlignmentCenter;
            [headView addSubview:name1];
            
            UILabel *name2 = [[UILabel alloc] initWithFrame:CGRectMake(SCREEN_WIDTH/2 + 15, 5, 120, 25)];
            name2.text = @"分公司名称";
            name2.textAlignment = NSTextAlignmentCenter;
            [headView addSubview:name2];
            
            return headView;
        };

        _tableView.tableHeaderView = createHeadView();
        
    }else if (type == DataTypeFor) {//商标专利
        
        WTModel *model1 = [WTModel new];
        model1.name = @"asd";
        model1.content = @"111111";
        
        
        WTModel *model2 = [WTModel new];
        model2.name = @"232342342";
        model2.content = @"qweqwe";
        
        WTModel *model3 = [WTModel new];
        model3.name = @"asdasdad";
        model3.content = @"asdasdasds";
        
        WTModel *model4 = [WTModel new];
        model4.name = @"asdasdasd";
        model4.content = @"dasdasdasd";
        
        WTModel *model5 = [WTModel new];
        model5.name = @"sadasqweqwe";
        model5.content = @"qweqweccc";
        
        WTModel *model6 = [WTModel new];
        model6.name = @"sdasdasd";
        model6.content = @"zxczxczxc";
        
        WTModel *model7 = [WTModel new];
        model7.name = @"qweqweq";
        model7.content = @"dddsdsdsddsds";
        
        [dataArr addObject:model1];
        [dataArr addObject:model2];
        [dataArr addObject:model3];
        [dataArr addObject:model4];
        [dataArr addObject:model5];
        [dataArr addObject:model6];
        [dataArr addObject:model7];
        
    }else {//信用记录
        
        WTModel *model1 = [WTModel new];
        model1.name = @"asd";
        model1.content = @"111111";
        
        
        WTModel *model2 = [WTModel new];
        model2.name = @"232342342";
        model2.content = @"qweqwe";
        
        WTModel *model3 = [WTModel new];
        model3.name = @"asdasdad";
        model3.content = @"asdasdasds";
        
        WTModel *model4 = [WTModel new];
        model4.name = @"asdasdasd";
        model4.content = @"dasdasdasd";
        
        WTModel *model5 = [WTModel new];
        model5.name = @"sadasqweqwe";
        model5.content = @"qweqweccc";
        
        WTModel *model6 = [WTModel new];
        model6.name = @"sdasdasd";
        model6.content = @"zxczxczxc";
        
        WTModel *model7 = [WTModel new];
        model7.name = @"qweqweq";
        model7.content = @"dddsdsdsddsds";
        
        [dataArr addObject:model1];
        [dataArr addObject:model2];
        [dataArr addObject:model3];
        [dataArr addObject:model4];
        [dataArr addObject:model5];
        [dataArr addObject:model6];
        [dataArr addObject:model7];
        
    }
    
    [_tableView reloadData];
    
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return dataArr.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    WTModel *model = dataArr[indexPath.row];
    
    return [self textHeightFromTextString:model.content width:SCREEN_WIDTH/5 *4 fontSize:13] + 25;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    WTTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CellWithIdentifier"];
        
    if (!cell) {
        
        cell = [[WTTableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"CellWithIdentifier"];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    
    [cell updateCellWithData:dataArr[indexPath.row]];
    
    return cell;
}


//动态 计算行高
//根据字符串的实际内容的多少 在固定的宽度和字体的大小，动态的计算出实际的高度
- (CGFloat)textHeightFromTextString:(NSString *)text width:(CGFloat)textWidth fontSize:(CGFloat)size{
    
    if (![text isKindOfClass: [NSString class]]) {
        return 0;
    }
    
    if (text.length == 0) {
        return 0;
    }
    
    //    BOOL moreLine = textLength > textWidth;
    UIFont *textFont = [UIFont systemFontOfSize: size];
    CGSize titleSize = [text boundingRectWithSize: CGSizeMake(textWidth, MAXFLOAT) options: NSStringDrawingUsesFontLeading|NSStringDrawingTruncatesLastVisibleLine | NSStringDrawingUsesLineFragmentOrigin attributes: @{NSFontAttributeName: textFont} context:nil].size;
    
    NSArray *spaceArray = [text componentsSeparatedByString: @"\n"];
    if (spaceArray.count > 1) {
        titleSize.height += spaceArray.count * 0.1;
    }
    
    return roundf(titleSize.height);
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
