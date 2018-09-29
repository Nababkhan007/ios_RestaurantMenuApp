//
//  NewViewControllerClass.h
//  AnotherRestaurantMenuApp
//
//  Created by lab on 9/29/18.
//  Copyright © 2018 digicon. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface NewViewControllerClass : UIViewController

@property NSString *foodsDescription;
@property NSString *foodsImageView;

@property (weak, nonatomic) IBOutlet UILabel *details;

@property (weak, nonatomic) IBOutlet UIImageView *imageView;


@end

NS_ASSUME_NONNULL_END
