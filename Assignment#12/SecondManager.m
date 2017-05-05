//
//  SecondManager.m
//  Assignment#11
//
//  Created by yoshitokomiya on 2017-05-04.
//  Copyright © 2017 yoshitokomiya. All rights reserved.
//

#import "SecondManager.h"

@implementation SecondManager

- (instancetype)initWith: (DeliveryService *)instance
{
    self = [super init];
    if (self) {
        _instance = instance;
    }
    return self;
}

- (BOOL) kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings{
    return YES;
}

- (BOOL) kitchenShouldUpgradeOrder:(Kitchen *)kitchen{
    return YES;
}

- (void) kitchenDidMakePizza:(Pizza *)pizza{

    NSLog(@"Thanks a million!!");
    [_instance deliverPizza:pizza];
}


@end
