//
//  BNRItem.m
//  RandomPosseessions
//
//  Created by Sam Saccone on 8/25/13.
//  Copyright (c) 2013 Sam Saccone. All rights reserved.
//

#import "BNRItem.h"

@implementation BNRItem

- (id)init
{
    return [self initWithItemName:@"item" valueInDollars:0 serialNumber:@"N/A"];
}

- (id)initWithItemName:(NSString *)name valueInDollars:(int)value serialNumber:(NSString *)sNumber
{
    self = [super init];
    
    if (self) {
        [self setItemName:name];
        [self setValueInDollars:value];
        [self setSerialNumber:sNumber];
        
        dateCreated = [[NSDate alloc] init];
    }
    
    return self;
}
- (NSString *)description
{
    NSString *descriptionString =
    [[NSString alloc] initWithFormat:@"%@ (%@): worth $%d, recorded on %@",
        itemName,
        serialNumber,
        valueInDollars,
        dateCreated];
    
    return descriptionString;
}

-(void)setItemName:(NSString *)str
{
    itemName = str;
}

-(NSString *)itemName
{
    return itemName;
}

-(void)setSerialNumber:(NSString *)str
{
    serialNumber = str;
}

-(NSString *)serialNumber
{
    return serialNumber;
}

-(void)setValueInDollars:(int)i
{
    valueInDollars = i;
}

-(int)valueInDollars
{
    return valueInDollars;
}

-(NSDate *)dateCreated
{
    return dateCreated;
}

+(id)randomItem
{
    NSArray *adjectives = [NSArray arrayWithObjects:@"yummy", @"big", @"yellow", nil];
    NSArray *nouns      = [NSArray arrayWithObjects:@"tank", @"train", @"tree", nil];
    
    NSString *randomName =  [NSString stringWithFormat:@"%@ %@",
        [nouns objectAtIndex:rand() % [nouns count]],
                             [adjectives objectAtIndex:rand() % [adjectives count]]];
    
    int randomCost = rand() * 100;
    NSString *randomSerial = [NSString stringWithFormat:@"%d", rand()];
    
    return [[self alloc] initWithItemName:randomName valueInDollars:randomCost serialNumber:randomSerial];
}

@end
