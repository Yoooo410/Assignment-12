//
//  FirstManager.m
//  Assignment#11
//
//  Created by yoshitokomiya on 2017-05-04.
//  Copyright © 2017 yoshitokomiya. All rights reserved.
//

#import "FirstManager.h"

@implementation FirstManager

- (BOOL) kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings{
    
    BOOL flag = NO;
    for (int i = 0; i < toppings.count; i++) {
        
        if ([toppings[i] compare:@"anchovies"] == NSOrderedSame) {
            flag = NO;
            break;
        }
        else {
            flag = YES;
        }
    }
    return flag;
}

- (BOOL) kitchenShouldUpgradeOrder:(Kitchen *)kitchen{
    return NO;
}

- (void) kitchenDidMakePizza:(Pizza *)pizza{
}

@end
