//
//  ViewController.m
//  AnotherRestaurantMenuApp
//
//  Created by lab on 9/29/18.
//  Copyright © 2018 digicon. All rights reserved.
//

#import "ViewController.h"
#import "CustomCellDesignClass.h"
#import "NewViewControllerClass.h"

@interface ViewController (){
    
    NSArray *foodsName;
    NSArray *foodsItem;
    NSArray *foodsPrice;
    NSArray *foodsImage;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    foodsName = [NSArray arrayWithObjects:@"French_Fry",@"Normal_Pizza",@"Burger_Item",@"Delicious_Pizza",@"Chinese_Noodles",@"Vagetables_Roll",@"Various_Food_Items", nil];
    
    foodsItem = [NSArray arrayWithObjects:@"Snacks",@"Lunch",@"Snacks",@"Supper",@"Breakfast",@"Lunch",@"Dinner", nil];
    
    foodsPrice = [NSArray arrayWithObjects:@"20$",@"35$",@"40$",@"75$",@"50$",@"49$",@"15$", nil];
    
    foodsImage = [NSArray arrayWithObjects:@"french_fry.jpg",@"normal_pizza.jpg",@"burger_item.jpg",@"delicious_pizza.jpg",@"chinese_noodles.jpg",@"vagetables_roll.jpg",@"various_foods_item.jpg", nil];
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return [foodsName count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString *sampleIdentifier = @"CustomCellDesign";
    
    CustomCellDesignClass *cell = (CustomCellDesignClass*)[tableView dequeueReusableCellWithIdentifier:sampleIdentifier];
    
    if(cell==nil){
        
        NSArray *nib = [[NSBundle mainBundle]loadNibNamed:@"CustomCellDesign" owner:self options:nil];
        cell = [nib objectAtIndex:0];
    }
    
    cell.foodItem.text = [foodsName objectAtIndex:indexPath.row];
    cell.foodType.text = [foodsItem objectAtIndex:indexPath.row];
    cell.foodPrice.text = [foodsPrice objectAtIndex:indexPath.row];
    cell.foodImage.image = [UIImage imageNamed:[foodsImage objectAtIndex:indexPath.row]];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    return 115;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UIStoryboard *story = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    
    NewViewControllerClass *obj = [story instantiateViewControllerWithIdentifier:@"AnotherId"];
    
    obj.foodsDescription = foodsName [indexPath.row];
    obj.foodsImageView = foodsImage [indexPath.row];
    [[self navigationController]pushViewController:obj animated:true];
}

@end
