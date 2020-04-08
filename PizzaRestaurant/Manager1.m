//
//  Manager1.m
//  PizzaRestaurant
//
//  Created by WendaLi on 2020-04-08.
//  Copyright © 2020 Lighthouse Labs. All rights reserved.
//

#import "Manager1.h"

@implementation Manager1

- (BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray*)toppings
{
    if ([toppings containsObject:@"anchovies"]) {
        return NO;
    }else {
        return YES;
    }
}

- (BOOL) kitchenShouldUpgradeOrder:(Kitchen *)kitchen
{
    return NO;
}

@end
