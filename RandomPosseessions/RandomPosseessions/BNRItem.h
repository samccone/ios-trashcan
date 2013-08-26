//
//  BNRItem.h
//  RandomPosseessions
//
//  Created by Sam Saccone on 8/25/13.
//  Copyright (c) 2013 Sam Saccone. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRItem : NSObject
{
    NSString *itemName;
    NSString *serialNumber;
    int valueInDollars;
    NSDate *dateCreated;
}

- (id)initWithItemName:(NSString *)name
        valueInDollars:(int) value
        serialNumber:(NSString *)sNumber;

- (id) initWithItemNameAndSerial:(NSString *)name
    serialNumber:(NSString *)sNumber;

- (void)setItemName:(NSString *)str;
- (NSString *)itemName;

- (void)setSerialNumber:(NSString *)str;
- (NSString *)serialNumber;

-(void)setValueInDollars:(int)i;
-(int)valueInDollars;

-(NSDate *)dateCreated;

+(id)randomItem;
@end
