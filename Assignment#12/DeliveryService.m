//
//  DeliveryService.m
//  Assignment#12
//
//  Created by yoshitokomiya on 2017-05-04.
//  Copyright © 2017 yoshitokomiya. All rights reserved.
//

#import "DeliveryService.h"

@implementation DeliveryService

- (instancetype)init
{
    self = [super init];
    if (self) {
        _pizzaInformation = [NSMutableArray array];
    }
    return self;
}

- (void) deliverPizza:(Pizza *)pizza {
    [_pizzaInformation addObject:pizza];
    DeliveryCar *dc = [DeliveryCar new];
    [dc deliverPizza:pizza];
}

- (void) recordPizza {
    NSLog(@"%ld",_pizzaInformation.count);
    for (int i = 0; i < _pizzaInformation.count; i++) {
        //NSLog(@"%@",[_pizzaInformation[i] showOrder]);
        [_pizzaInformation[i] showOrder];
    }
}

@end
