//
//  DeliveryService.m
//  Assignment#12
//
//  Created by yoshitokomiya on 2017-05-04.
//  Copyright © 2017 yoshitokomiya. All rights reserved.
//

#import "DeliveryService.h"

@implementation DeliveryService

- (void) deliverPizza:(Pizza *)pizza {
}

- (void) recordPizza:(NSArray *)deliveredPizza {
    
    deliveredPizza = _pizzaInformation;
    
    for (int i = 0; i < deliveredPizza.count; i++) {
        NSLog(@"%@",deliveredPizza[i]);
    }
}

@end
