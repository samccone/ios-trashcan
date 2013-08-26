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
        
        for(int i = 0; i < 10; ++i) {
            [items addObject:[BNRItem randomItem]];
        }
        
        for(BNRItem *item in items) {
            NSLog(@"%@", item);
        }
    }
    
    return 0;
}

