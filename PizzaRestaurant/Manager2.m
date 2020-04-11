//
//  Manager2.m
//  PizzaRestaurant
//
//  Created by WendaLi on 2020-04-08.
//  Copyright © 2020 Lighthouse Labs. All rights reserved.
//

#import "Manager2.h"

@implementation Manager2

- (BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray*)toppings
{
    return YES;
}

- (BOOL) kitchenShouldUpgradeOrder:(Kitchen *)kitchen
{
    return YES;
}

- (void) kitchenDidMakePizza:(Pizza *)pizza useDeliveryService:(DeliveryService*) deliveryService
{
    [deliveryService deliverPizza:pizza];
    NSLog(@"Enjoy your Pizza");
}

@end
