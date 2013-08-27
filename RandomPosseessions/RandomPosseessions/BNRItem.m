//
//  BNRItem.m
//  RandomPosseessions
//
//  Created by Sam Saccone on 8/25/13.
//  Copyright (c) 2013 Sam Saccone. All rights reserved.
//

#import "BNRItem.h"

@implementation BNRItem

@synthesize containedItem;
@synthesize container;
@synthesize itemName;
@synthesize valueInDollars;
@synthesize serialNumber;
@synthesize dateCreated;

- (id)init
{
    return [self initWithItemName:@"item" valueInDollars:0 serialNumber:@"N/A"];
}

-(void)dealloc
{
    NSLog(@"destroying %@", self);
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

- (id)initWithItemNameAndSerial:(NSString *)name serialNumber:(NSString *)sNumber
{
    self = [super init];
    
    if (self) {
        [self setSerialNumber:sNumber];
        [self setItemName:name];
    }
    
    return self;
}

- (void) setContainedItem:(BNRItem *)i
{
    containedItem = i;
    [i setContainer:self];
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
