//
//  MPSquareModel.m
//  CollectionCellDemo
//
//  Created by YC on 2018/6/26.
//  Copyright © 2018年 YC. All rights reserved.
//

#import "MPSquareModel.h"

@implementation MPSquareModel

- (void)setValue:(id)value forUndefinedKey:(NSString *)key
{
    
}


- (void)setPriceStr:(NSString *)priceStr
{
    _priceStr = priceStr;
    if(priceStr && priceStr.length > 2)
    {
        _priceAttrStr = [[NSMutableAttributedString alloc] initWithString:priceStr];

        
    }
    
}

@end
