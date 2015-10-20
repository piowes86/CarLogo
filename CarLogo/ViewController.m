//
//  ViewController.m
//  CrashApp
//
//  Created by Piotr Wesolowski on 18.10.2015.
//  Copyright © 2015 CrashApp. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController {
    
    NSArray *carsList;
}

- (void)viewDidLoad {
    [super viewDidLoad];

    carsList =  [[NSArray alloc] initWithObjects:@"Alfa Romeo", @"Audi", @"BMW", @"Chevrolet", @"Chrysler", @"Citroen", @"Ferrari", @"Fiat", @"Ford",
                                                 @"Honda", @"Hyundai", @"Jaguar", @"Jeep", @"Kia", @"Lexus", @"Mazda", @"Mercedes Benz", @"Nissan",
                                                 @"Peugeot", @"Porsche", @"Renault", @"Saab", @"Seat", @"Skoda", @"Toyota", @"Volkswagen", @"Volvo", nil];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [carsList count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *carListTable = @"CarListTable";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:carListTable];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:carListTable];
    }
    
    cell.textLabel.text = [carsList objectAtIndex:indexPath.row];
    cell.imageView.image = [UIImage imageNamed:@"logo.png"];
    
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
