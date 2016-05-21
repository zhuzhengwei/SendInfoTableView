//
//  WTTableViewCell.m
//  SendInfoTableView
//
//  Created by 孙文强 on 16/5/14.
//  Copyright © 2016年 Happy Day. All rights reserved.
//

#import "WTTableViewCell.h"

@implementation WTTableViewCell


- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {

    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];

    if (self) {
        
        [self commView];
    }

    return self;
}

- (void)commView {

    leftView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH/5, CGRectGetHeight(self.contentView.bounds))];
    leftView.backgroundColor = [UIColor colorWithRed:239/255. green:240/255. blue:241/255. alpha:.9];
    leftView.autoresizingMask = UIViewAutoresizingFlexibleHeight;
    [self.contentView addSubview:leftView];

    
    nameLb = [[UILabel alloc] initWithFrame:CGRectMake(CGRectGetWidth(leftView.bounds)/2-25, 0, 125, 35)];
    nameLb.font = [UIFont systemFontOfSize:13];
    nameLb.textAlignment = NSTextAlignmentLeft;
    nameLb.numberOfLines = 0;
    nameLb.textColor = [UIColor blackColor];
    [leftView addSubview:nameLb];
    
    
    lineView = [[UIView alloc] initWithFrame:CGRectMake(CGRectGetWidth(leftView.bounds) - 1, 0, 1, CGRectGetHeight(self.contentView.bounds))];
    lineView.backgroundColor = [UIColor blackColor];
    lineView.autoresizingMask = UIViewAutoresizingFlexibleHeight;
    [leftView addSubview:lineView];

    
    contentLb = [[UILabel alloc] initWithFrame:CGRectMake(SCREEN_WIDTH/5+1, 0, SCREEN_WIDTH - SCREEN_WIDTH/5+1, CGRectGetHeight(self.contentView.bounds))];
    contentLb.font = [UIFont systemFontOfSize:13];
    contentLb.textAlignment = NSTextAlignmentLeft;
    contentLb.numberOfLines = 0;
    contentLb.backgroundColor = [UIColor whiteColor];
    contentLb.textColor = [UIColor blackColor];
    [self.contentView addSubview:contentLb];
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)updateCellWithData:(WTModel *)model {

    nameLb.text = model.name;

    contentLb.text = model.content;

    CGFloat height = [self textHeightFromTextString:model.content width:CGRectGetWidth(contentLb.bounds) fontSize:13];
    if (height > 50) {
        
        //调整frame
        
        CGRect frame1 = nameLb.frame;
        frame1.origin.y = (height - 40)/2;
        nameLb.frame = frame1;
        
        CGRect frame2 = contentLb.frame;
        frame2.size.height = height;
        contentLb.frame = frame2;

    }
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
    
    //    CGFloat textLength = text.length * (size + 0.5);
    //    BOOL moreLine = textLength > textWidth;
    UIFont *textFont = [UIFont systemFontOfSize: size];
    CGSize titleSize = [text boundingRectWithSize: CGSizeMake(textWidth, MAXFLOAT) options: NSStringDrawingUsesFontLeading|NSStringDrawingTruncatesLastVisibleLine | NSStringDrawingUsesLineFragmentOrigin attributes: @{NSFontAttributeName: textFont} context:nil].size;
    
    NSArray *spaceArray = [text componentsSeparatedByString: @"\n"];
    if (spaceArray.count > 1) {
        titleSize.height += spaceArray.count * 0.1;
    }
    
    return roundf(titleSize.height);
}




@end
