//
//  DeliveryService.h
//  Assignment#12
//
//  Created by yoshitokomiya on 2017-05-04.
//  Copyright © 2017 yoshitokomiya. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"
#import "DeliveryCar.h"


@interface DeliveryService : NSObject

@property NSMutableArray *pizzaInformation;

- (void) deliverPizza:(Pizza *)pizza;
- (void) recordPizza;

@end
