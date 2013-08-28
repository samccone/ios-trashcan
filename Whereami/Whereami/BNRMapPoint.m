//
//  BNRMapPoint.m
//  Whereami
//
//  Created by Sam Saccone on 8/27/13.
//  Copyright (c) 2013 Sam Saccone. All rights reserved.
//

#import "BNRMapPoint.h"

@implementation BNRMapPoint

- (id) init
{
    return [self initWithCoordinate:CLLocationCoordinate2DMake(40.2, 21.2) title:@"home"];
}

- (id)initWithCoordinate:(CLLocationCoordinate2D)c title:(NSString *)t
{
    self = [super init];
    
    if (self) {
        _coordinate = c;
        [self setTitle:t];
    }
    
    return self;
    
}
@end
