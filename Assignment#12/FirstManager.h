//
//  FirstManager.h
//  Assignment#11
//
//  Created by yoshitokomiya on 2017-05-04.
//  Copyright © 2017 yoshitokomiya. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Kitchen.h"

@interface FirstManager : NSObject <KitchenDelegate>

- (BOOL) kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings;

- (BOOL) kitchenShouldUpgradeOrder:(Kitchen *)kitchen;

- (void) kitchenDidMakePizza:(Pizza *)pizza;


@end
