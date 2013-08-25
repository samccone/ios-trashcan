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
        NSLog(@"%@", [BNRItem randomItem]);
        NSLog(@"%@", [BNRItem randomItem]);
        NSLog(@"%@", [BNRItem randomItem]);        
    }
    
    return 0;
}

