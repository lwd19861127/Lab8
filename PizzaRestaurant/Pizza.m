//
//  Pizza.m
//  PizzaRestaurant
//
//  Created by WendaLi on 2020-04-02.
//  Copyright © 2020 Lighthouse Labs. All rights reserved.
//

#import "Pizza.h"

@implementation Pizza

- (instancetype)initWithSize: (PizzaSize) size andTopping: (NSArray*) topping
{
    self = [super init];
    if (self) {
        _size = size;
        _topping = topping;
    }
    return self;
}

+ (Pizza*) largePepperoni
{
    return [[Pizza alloc] initWithSize:large andTopping:@[@"1", @"2"]];
}

+ (Pizza*) meatLoversWithSize:(PizzaSize) size
{
    return [[Pizza alloc] initWithSize:size andTopping:@[@"3", @"4"]];
}

@end
