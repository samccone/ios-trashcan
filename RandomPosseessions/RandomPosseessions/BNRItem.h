//
//  BNRItem.h
//  RandomPosseessions
//
//  Created by Sam Saccone on 8/25/13.
//  Copyright (c) 2013 Sam Saccone. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRItem : NSObject

- (id)initWithItemName:(NSString *)name
        valueInDollars:(int) value
        serialNumber:(NSString *)sNumber;

- (id) initWithItemNameAndSerial:(NSString *)name
    serialNumber:(NSString *)sNumber;

@property (nonatomic, copy) NSString *itemName;
@property (nonatomic, copy) NSString *serialNumber;
@property (nonatomic) int valueInDollars;
@property (nonatomic, strong) BNRItem *containedItem;
@property (nonatomic, weak) BNRItem *container;
@property (nonatomic, readonly, strong) NSDate  *dateCreated;

+(id)randomItem;
@end
