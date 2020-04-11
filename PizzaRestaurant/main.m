//
//  main.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Kitchen.h"
#import "Pizza.h"
#import "Manager1.h"
#import "Manager2.h"
#import "DeliveryService.h"
#import "DeliveryCar.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Kitchen *restaurantKitchen = [Kitchen new];
        Manager1 *manager1 = [Manager1 new];
        Manager2 *manager2 = [Manager2 new];
        DeliveryService *deliveryService = [DeliveryService new];
        DeliveryCar *deliveryCar = [DeliveryCar new];
        
        while (TRUE) {
            char str[100];
            deliveryService.delegate = deliveryCar;
            
            NSLog(@"Which Manager do you like:");
            NSLog(@"> ");
            fgets (str, 100, stdin);
            NSString *inputString0 = [[NSString alloc] initWithUTF8String:str];
            inputString0 = [inputString0 stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            NSLog(@"Input was %@", inputString0);
            
            if ([inputString0 isEqualToString:@"1"]) {
                restaurantKitchen.delegate = manager1;
                NSLog(@"Please pick your pizza size and toppings:");
                NSLog(@"> ");
                fgets (str, 100, stdin);
                NSString *inputString1 = [[NSString alloc] initWithUTF8String:str];
                inputString1 = [inputString1 stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
                NSLog(@"Input was %@", inputString1);
                
                // Take the first word of the command as the size, and the rest as the toppings
                NSArray *commandWords = [inputString1 componentsSeparatedByString:@" "];
                
                // And then send some message to the kitchen...
                NSRange theTopping;
                theTopping.location = 1;
                theTopping.length =  commandWords.count - 1;
                Pizza *pizza = [restaurantKitchen makePizzaWithSize:(PizzaSize)commandWords[0] toppings:[commandWords subarrayWithRange:theTopping] useDeliveryService:deliveryService];
                NSLog(@"%ld + %@",(long)pizza.size, pizza.topping);
            }else if ([inputString0 isEqualToString:@"2"]) {
                restaurantKitchen.delegate = manager2;
                NSLog(@"Please pick your pizza size and toppings:");
                NSLog(@"> ");
                fgets (str, 100, stdin);
                NSString *inputString2 = [[NSString alloc] initWithUTF8String:str];
                inputString2 = [inputString2 stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
                NSLog(@"Input was %@", inputString2);
                
                // Take the first word of the command as the size, and the rest as the toppings
                NSArray *commandWords = [inputString2 componentsSeparatedByString:@" "];
                
                // And then send some message to the kitchen...
                NSRange theTopping;
                theTopping.location = 1;
                theTopping.length =  commandWords.count - 1;
                Pizza *pizza = [restaurantKitchen makePizzaWithSize:(PizzaSize)commandWords[0] toppings:[commandWords subarrayWithRange:theTopping] useDeliveryService:deliveryService];
                NSLog(@"%ld + %@",(long)pizza.size, pizza.topping);
            }else {
                NSLog(@"Please pick your pizza size and toppings:");
                NSLog(@"> ");
                fgets (str, 100, stdin);
                NSString *inputString3 = [[NSString alloc] initWithUTF8String:str];
                inputString3 = [inputString3 stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
                NSLog(@"Input was %@", inputString3);
                
                // Take the first word of the command as the size, and the rest as the toppings
                NSArray *commandWords = [inputString3 componentsSeparatedByString:@" "];
                
                // And then send some message to the kitchen...
                NSRange theTopping;
                theTopping.location = 1;
                theTopping.length =  commandWords.count - 1;
                Pizza *pizza = [[Pizza alloc] initWithSize:(PizzaSize)commandWords[0] andTopping:[commandWords subarrayWithRange:theTopping]];
                NSLog(@"%ld + %@",(long)pizza.size, pizza.topping);
            }
        }

    }
    return 0;
}

