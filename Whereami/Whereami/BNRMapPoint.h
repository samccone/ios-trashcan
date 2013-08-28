//
//  BNRMapPoint.h
//  Whereami
//
//  Created by Sam Saccone on 8/27/13.
//  Copyright (c) 2013 Sam Saccone. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>

@interface BNRMapPoint : NSObject <MKAnnotation>
{
    
}

-(id) initWithCoordinate:(CLLocationCoordinate2D)c title:(NSString *)t;

@property(nonatomic, readonly) CLLocationCoordinate2D coordinate;
@property(nonatomic, copy) NSString *title;

@end
