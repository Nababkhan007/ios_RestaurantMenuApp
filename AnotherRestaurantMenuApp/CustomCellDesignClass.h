//
//  CustomCellDesignClass.h
//  AnotherRestaurantMenuApp
//
//  Created by lab on 9/29/18.
//  Copyright © 2018 digicon. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CustomCellDesignClass : UITableViewCell

@property(nonatomic,strong)IBOutlet UILabel *foodItem;
@property(nonatomic,strong)IBOutlet UILabel *foodType;
@property(nonatomic,strong)IBOutlet UILabel *foodPrice;
@property(nonatomic,strong)IBOutlet UIImageView *foodImage;

@end

NS_ASSUME_NONNULL_END
