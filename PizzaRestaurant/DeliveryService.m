//
//  DeliveryService.m
//  PizzaRestaurant
//
//  Created by WendaLi on 2020-04-11.
//  Copyright © 2020 Lighthouse Labs. All rights reserved.
//

#import "DeliveryService.h"

@implementation DeliveryService

- (instancetype)init
{
    self = [super init];
    if (self) {
        _delivered = [NSMutableArray new];
    }
    return self;
}

- (void) deliverPizza: (Pizza *) pizza
{
    [self.delegate deliverPizza: pizza];
    [self.delivered addObject: pizza];
}

- (NSArray*) allDeliveredPizza
{
    return self.delivered;
}
@end
