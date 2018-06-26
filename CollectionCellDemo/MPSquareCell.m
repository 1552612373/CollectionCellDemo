//
//  MPSquareCell.m
//  CollectionCellDemo
//
//  Created by YC on 2018/6/25.
//  Copyright © 2018年 YC. All rights reserved.
//

#import "MPSquareCell.h"
#import <Masonry.h>
#define YCWeakSelf __weak typeof(self) weakSelf = self

@interface MPSquareCell ()

@property(nonatomic,strong)UIImageView *bgImageView; // 背景封面

@property(nonatomic,strong)UILabel *mainTitleLabel; // 主题文字label

@property(nonatomic,strong)UILabel *priceLabel; // 价格label

@property(nonatomic,strong)UIView *lineView; // 分割线

@property(nonatomic,strong)UIImageView *headImageView; // 头像

@property(nonatomic,strong)UILabel *nameLabel; // 价格label

@end

@implementation MPSquareCell

- (instancetype)initWithFrame:(CGRect)frame
{
    if(self = [super initWithFrame:frame])
    {
        [self createUI];
    }
    return self;
}

- (void)createUI
{
    [self.contentView addSubview:self.bgImageView];
    [self.contentView addSubview:self.mainTitleLabel];
    [self.contentView addSubview:self.priceLabel];
    [self.contentView addSubview:self.lineView];
    [self.contentView addSubview:self.headImageView];
    [self.contentView addSubview:self.nameLabel];
}



- (void)setModel:(MPSquareModel *)model
{
    _model = model;
    self.bgImageView.image = [UIImage imageNamed:model.imgStr];
    self.mainTitleLabel.text = model.mainStr;
    self.priceLabel.text = model.priceStr;
    self.headImageView.image = [UIImage imageNamed:model.imgStr];
    self.nameLabel.text = [NSString stringWithFormat:@"@%@",model.nameStr];
}

- (void)layoutSubviews
{
    YCWeakSelf;
    
    [_bgImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.left.right.equalTo(@0);
        make.height.equalTo(@(self.contentView.frame.size.width*1.5)); // 高度为宽度的1.5倍
    }];

    [_mainTitleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(weakSelf.bgImageView.mas_bottom);
        make.left.equalTo(@8);
        make.height.equalTo(@38);
    }];

    [_priceLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(weakSelf.bgImageView.mas_bottom);
        make.right.equalTo(@(-8));
        make.height.equalTo(@38);
    }];
    
    [_lineView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(weakSelf.mainTitleLabel.mas_bottom);
        make.left.equalTo(@9);
        make.right.equalTo(@(-9));
        make.height.equalTo(@0.5);
    }];
    
    [_headImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(weakSelf.lineView.mas_bottom).offset(7);
        make.left.equalTo(@9);
        make.size.mas_equalTo(CGSizeMake(22, 22));
    }];
    
    [_nameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(weakSelf.headImageView.mas_right).offset(10);
        make.right.equalTo(@(-3));
        make.centerY.equalTo(weakSelf.headImageView.mas_centerY);
    }];
    
}

- (UIImageView *)bgImageView
{
    if(!_bgImageView)
    {
        _bgImageView = [UIImageView new];
    }
    return _bgImageView;
}

- (UILabel *)mainTitleLabel
{
    if(!_mainTitleLabel)
    {
        _mainTitleLabel = [UILabel new];
        _mainTitleLabel.font = [UIFont systemFontOfSize:14];
        _mainTitleLabel.textAlignment = NSTextAlignmentLeft;
    }
    return _mainTitleLabel;
}

- (UILabel *)priceLabel
{
    if(!_priceLabel)
    {
        _priceLabel = [UILabel new];
    }
    return _priceLabel;
}

- (UIView *)lineView
{
    if(!_lineView)
    {
        _lineView = [UIView new];
        _lineView.backgroundColor = [UIColor orangeColor];
    }
    return _lineView;
}

- (UIImageView *)headImageView
{
    if(!_headImageView)
    {
        _headImageView = [UIImageView new];
        _headImageView.layer.cornerRadius = 11;
        _headImageView.layer.masksToBounds = YES;
    }
    return _headImageView;
}

- (UILabel *)nameLabel
{
    if(!_nameLabel)
    {
        _nameLabel = [UILabel new];
        _nameLabel.font = [UIFont systemFontOfSize:14];
        _nameLabel.textAlignment = NSTextAlignmentLeft;
    }
    return _nameLabel;
}

@end
