//
//  ViewController.m
//  Whereami
//
//  Created by Sam Saccone on 8/26/13.
//  Copyright (c) 2013 Sam Saccone. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize locationManager;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self) {
        locationManager = [[CLLocationManager alloc] init];
        
        [locationManager setDelegate:self];
        [locationManager setDesiredAccuracy:kCLLocationAccuracyBest];
        
        [locationManager startUpdatingHeading];
        
        [locationManager setDistanceFilter:50];
    }

    return self;
}

-(void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation
{
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance([userLocation coordinate], 100, 100);
    
    [worldView setRegion:region animated:TRUE];
}

- (void)dealloc
{
    [locationManager setDelegate:nil];
}

- (void)locationManager:(CLLocationManager *)manager
    didUpdateHeading:(CLHeading *)newHeading
{
    NSLog(@"heading %@", newHeading);
}

- (IBAction)segmentSelected:(id)sender
{
    switch ([mapToggle selectedSegmentIndex]) {
        case 0:
            worldView.mapType = MKMapTypeStandard;
            break;
        case 1:
            worldView.mapType = MKMapTypeSatellite;
            break;
        case 2:
            worldView.mapType = MKMapTypeHybrid;
            break;
        default:
            break;
    }
}

- (void)locationManager:(CLLocationManager *)manager
    didUpdateToLocation:(CLLocation *)newLocation
           fromLocation:(CLLocation *)oldLocation
{
    NSLog(@"location %@", newLocation);
    
    [self foundLocation:newLocation];
}


-(void)locationManager:(CLLocationManager *)manager
    didFailWithError:(NSError *)error
{
    NSLog(@"error %@", error);
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    [worldView setShowsUserLocation:TRUE];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)findLocation
{
    [locationManager startUpdatingLocation];
    [activityIndicator startAnimating];
    [locationTitleField setHidden:YES];
}

-(void)foundLocation:(CLLocation *)loc
{
    CLLocationCoordinate2D coord = [loc coordinate];
    
    BNRMapPoint *mp = [[BNRMapPoint alloc] initWithCoordinate:coord title:[locationTitleField text]];
    
    [worldView addAnnotation:mp];
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(coord, 250, 250);
    [worldView setRegion:region animated:YES];
    
    [locationTitleField setText:@""];
    [activityIndicator stopAnimating];
    [locationTitleField setHidden:NO];
    [locationManager stopUpdatingLocation];
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [self findLocation];
    
    [textField resignFirstResponder];
    return YES;
}

@end
