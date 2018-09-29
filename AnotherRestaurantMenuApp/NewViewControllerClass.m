//
//  NewViewControllerClass.m
//  AnotherRestaurantMenuApp
//
//  Created by lab on 9/29/18.
//  Copyright © 2018 digicon. All rights reserved.
//

#import "NewViewControllerClass.h"

@interface NewViewControllerClass ()

@end

@implementation NewViewControllerClass

@synthesize details = _details;
@synthesize imageView = _imageView;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _details.text = _foodsDescription;
    _imageView.image = [UIImage imageNamed:_foodsImageView];
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
