//
//  ViewController.m
//  CollectionCellDemo
//
//  Created by YC on 2018/6/25.
//  Copyright © 2018年 YC. All rights reserved.
//

#import "ViewController.h"
#import "BotttomView.h"
#import "MPSquareCell.h"
#import "MPSquareModel.h"

/// Height/Width
#define kScreenWidth        [[UIScreen mainScreen] bounds].size.width
#define kScreenHeight       [[UIScreen mainScreen] bounds].size.height

@interface ViewController ()

@property(nonatomic,strong)UIImageView *iv;
@property(nonatomic,strong)BotttomView *bView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self.view addSubview:self.iv];
    [self.view addSubview:self.bView];

}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    if(self.bView.frame.size.height == 500)
    {
        [UIView animateWithDuration:1 animations:^{
            self.bView.frame = CGRectMake(0, kScreenHeight, kScreenWidth, 0);
            self.iv.frame = self.view.bounds;
        }];
    }
    else
    {
        [UIView animateWithDuration:1 animations:^{
            self.bView.frame = CGRectMake(0, kScreenHeight-500, kScreenWidth, 500);
            self.iv.frame = CGRectMake(0, 0, kScreenWidth, kScreenHeight-500);
        }];
    }
}

- (UIImageView *)iv
{
    if(!_iv)
    {
        _iv = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"IMG_0382.JPG"]];
        _iv.contentMode = UIViewContentModeScaleAspectFit;
        _iv.frame = self.view.bounds;
    }
    return _iv;
}

- (BotttomView *)bView
{
    if(!_bView)
    {
        _bView = [[BotttomView alloc] initWithFrame:CGRectMake(0, kScreenHeight, kScreenWidth, 0)];
        _bView.backgroundColor = [UIColor greenColor];
        
        MPSquareModel *model = [MPSquareModel new];
        model.imgStr = @"IMG_0382.JPG";
        model.mainStr = @"私人猪脚";
        model.priceStr = @"￥20/时";
        model.headStr = @"IMG_0382.JPG";
        model.nameStr = @"用户007";
        
        
        MPSquareCell *cell = [[MPSquareCell alloc] initWithFrame:CGRectMake(30, 0, kScreenWidth/2, kScreenWidth/2*1.5+38+36)];
        cell.model = model;
        cell.backgroundColor = [UIColor cyanColor];
        [_bView addSubview:cell];
        
        
        
        
    }
    return _bView;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
