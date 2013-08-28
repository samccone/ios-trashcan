//
//  ViewController.h
//  Whereami
//
//  Created by Sam Saccone on 8/26/13.
//  Copyright (c) 2013 Sam Saccone. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>
#import "BNRMapPoint.h"

@interface ViewController : UIViewController
<CLLocationManagerDelegate, MKMapViewDelegate, UITextFieldDelegate>
{
    IBOutlet MKMapView *worldView;
    IBOutlet UIActivityIndicatorView *activityIndicator;
    IBOutlet UITextField *locationTitleField;
    IBOutlet UISegmentedControl *mapToggle;
}

-(IBAction)segmentSelected:(id)sender;
-(void)findLocation;
-(void)foundLocation:(CLLocation *)loc;

@property CLLocationManager *locationManager;
@end
