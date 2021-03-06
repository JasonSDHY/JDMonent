//
//  PKReadCellDetial.m
//  01-片刻
//
//  Created by qianfeng on 15-4-27.
//  Copyright (c) 2015年 Jason Ding. All rights reserved.
//

#import "PKReadCellDetial.h"
#import "PKReadModelDetialHot.h"
#import "UIImageView+WebCache.h"

@interface PKReadCellDetial ()
@property (weak, nonatomic) IBOutlet UILabel *title;
@property (weak, nonatomic) IBOutlet UILabel *content;
@property (nonatomic, weak)UIImageView * myImageView;



@end

@implementation PKReadCellDetial

- (void)awakeFromNib {
    // Initialization code
    
    self.selectedBackgroundView = [[UIView alloc]init];
    self.backgroundColor = [UIColor clearColor];
    
}

#pragma mark - 初始化

+ (instancetype)cellWithTableView:(UITableView *)tableView
{
    static NSString *ID = @"PKReadCellDetial";
    PKReadCellDetial *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (cell == nil) {
        
        cell = [[[NSBundle mainBundle]loadNibNamed:@"PKReadCellDetial" owner:nil options:nil] lastObject];
        
        
    }
    return cell;
}

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        
        
    }
    return self;
}
-(void)layoutSubviews
{
    UIImageView * imV = [[UIImageView alloc]initWithFrame:self.bounds];
    [imV setImage:[UIImage resizedImageWithName:@"timeline_card_bottom_background"]];
    self.backgroundView = imV;


}

-(void)setModel:(PKReadModelDetialHot *)model
{
    _model = model;
    
    // 1,设置标题的文字
    self.title.text = model.title;
    
    // 2,设置内容
    self.content.text = model.content;
    
    // 3,设置图片
    CGFloat imageViewX = self.title.frame.origin.x + 10;
    CGFloat imageViewY = self.content.frame.origin.y ;
    CGFloat imageViewW = 130;
    CGFloat imageViewH = 65;

    [self.myImageView setFrame:CGRectMake(imageViewX, imageViewY, imageViewW, imageViewH)];
    [self.myImageView sd_setImageWithURL:[NSURL URLWithString:model.coverimg] placeholderImage:[UIImage imageNamed:PKPlaceholderImage]];
    self.myImageView.contentMode = UIViewContentModeScaleAspectFill;
    self.myImageView.clipsToBounds = YES;
    
    
}

-(UIImageView *)myImageView
{
    if (_myImageView == nil) {
        UIImageView* imageVView = [[UIImageView alloc]init];
        [self.contentView addSubview:imageVView];
        _myImageView = imageVView;
    }
    return _myImageView;
}

/**
 *  拦截frame的设置
 */
- (void)setFrame:(CGRect)frame
{
    frame.origin.y += PKStatusTableBorder;
    frame.origin.x = PKStatusTableBorder;
    frame.size.width -= 2 * PKStatusTableBorder;
    frame.size.height -= PKStatusTableBorder;
    
    [super setFrame:frame];
    
    //    self.CellImageView.frame = self.frame;
    
}
@end
