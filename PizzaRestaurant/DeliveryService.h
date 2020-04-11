//
//  DeliveryService.h
//  PizzaRestaurant
//
//  Created by WendaLi on 2020-04-11.
//  Copyright © 2020 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"

NS_ASSUME_NONNULL_BEGIN
@protocol DeliveryDelegate <NSObject>

- (void) deliverPizza: (Pizza *) pizza;

@end

@interface DeliveryService : NSObject

@property (nonatomic, weak) id<DeliveryDelegate> delegate;
@property (nonatomic, strong) NSMutableArray* delivered;

- (void) deliverPizza: (Pizza *) pizza;
- (NSArray*) allDeliveredPizza;

@end

NS_ASSUME_NONNULL_END
