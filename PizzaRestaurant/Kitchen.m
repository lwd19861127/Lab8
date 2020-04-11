//
//  Kitchen.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "Kitchen.h"

@implementation Kitchen

- (Pizza *)makePizzaWithSize:(PizzaSize)size toppings:(NSArray *)toppings useDeliveryService:(DeliveryService*) deliveryService
{
    Pizza *pizza = [Pizza new];
    if ([self.delegate kitchen:self shouldMakePizzaOfSize:size andToppings:toppings]) {
        if ([self.delegate kitchenShouldUpgradeOrder:self]) {
            pizza =  [[Pizza alloc] initWithSize:large andTopping:toppings];
        }else {
            pizza = [[Pizza alloc] initWithSize:size andTopping:toppings];
        }
        if ([self.delegate respondsToSelector:@selector(kitchenDidMakePizza:useDeliveryService:)]) {
            [self.delegate kitchenDidMakePizza:pizza useDeliveryService:deliveryService];
        }
        return pizza;
    }else {
        return nil;
    }
}

@end
