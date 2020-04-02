//
//  Pizza.h
//  PizzaRestaurant
//
//  Created by WendaLi on 2020-04-02.
//  Copyright © 2020 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Pizza : NSObject

typedef NS_ENUM(NSInteger, PizzaSize)
{
    small,
    medium,
    large
};
@property (nonatomic, assign) PizzaSize size;
@property (nonatomic, assign) NSArray* topping;


- (instancetype)initWithSize: (PizzaSize) size andTopping: (NSArray*) topping;
+ (Pizza*) largePepperoni;
+ (Pizza*) meatLoversWithSize:(PizzaSize) size;
@end

NS_ASSUME_NONNULL_END
