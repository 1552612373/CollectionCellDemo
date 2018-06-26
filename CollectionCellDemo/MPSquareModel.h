//
//  MPSquareModel.h
//  CollectionCellDemo
//
//  Created by YC on 2018/6/26.
//  Copyright © 2018年 YC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MPSquareModel : NSObject

@property(nonatomic,copy)NSString *imgStr;

@property(nonatomic,copy)NSString *mainStr;

@property(nonatomic,copy)NSString *priceStr;
@property(nonatomic,strong)NSMutableAttributedString *priceAttrStr;

@property(nonatomic,copy)NSString *headStr;

@property(nonatomic,copy)NSString *nameStr;


@end
