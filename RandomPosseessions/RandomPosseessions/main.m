//
//  main.m
//  RandomPosseessions
//
//  Created by Sam Saccone on 8/25/13.
//  Copyright (c) 2013 Sam Saccone. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        NSMutableArray *items = [[NSMutableArray alloc] init];
        
        BNRItem *backpack = [[BNRItem alloc] init];
        [backpack setItemName:@"backpack"];
        [items addObject:backpack];
        
        BNRItem *calculater = [[BNRItem alloc] init];
        [calculater setItemName:@"calculator"];
        [items addObject:calculater];
        
        [backpack setContainedItem:calculater];
        
    }
    
    return 0;
}

