//
//  main.m
//  Assignment#12
//
//  Created by yoshitokomiya on 2017-05-04.
//  Copyright © 2017 yoshitokomiya. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Kitchen.h"
#import "Pizza.h"
#import "FirstManager.h"
#import "SecondManager.h"
#import "DeliveryService.h"
#import "DeliveryCar.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSLog(@"Please pick your pizza size and toppings:");
        
        Kitchen *restaurantKitchen = [Kitchen new];
        FirstManager *fm = [FirstManager new];
        SecondManager *sm = [SecondManager new];
        
        while (TRUE) {
            // Loop forever
            
            NSLog(@"> ");
            char str[100];
            fgets (str, 100, stdin);
            
            NSString *inputString = [[NSString alloc] initWithUTF8String:str];
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            NSLog(@"Input was %@", inputString);
            
            // Take the first word of the command as the size, and the rest as the toppings
            NSArray *commandWords = [inputString componentsSeparatedByString:@" "];
            
            // And then send some message to the kitchen...
            
            restaurantKitchen.kitchenDelegate = fm;
            //restaurantKitchen.kitchenDelegate = sm;
            [restaurantKitchen getOrder:commandWords];
            
        }
        
    }
    return 0;
}
