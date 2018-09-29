//
//  CustomCellDesignClass.m
//  AnotherRestaurantMenuApp
//
//  Created by lab on 9/29/18.
//  Copyright © 2018 digicon. All rights reserved.
//

#import "CustomCellDesignClass.h"

@implementation CustomCellDesignClass

@synthesize foodItem = _foodItem;
@synthesize foodType = _foodType;
@synthesize foodPrice = _foodPrice;
@synthesize foodImage = _foodImage;

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
