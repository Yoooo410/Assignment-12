//
//  DeliveryCar.h
//  Assignment#12
//
//  Created by yoshitokomiya on 2017-05-04.
//  Copyright © 2017 yoshitokomiya. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Kitchen.h"
#import "FirstManager.h"
#import "SecondManager.h"
#import "DeliveryService.h"


@interface DeliveryCar : NSObject

- (void) deliverPizza:(Pizza *)pizza;

@end
