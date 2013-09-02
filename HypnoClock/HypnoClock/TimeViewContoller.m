//
//  TimeViewContoller.m
//  HypnoClock
//
//  Created by Sam Saccone on 9/1/13.
//  Copyright (c) 2013 Sam Saccone. All rights reserved.
//

#import "TimeViewContoller.h"

@implementation TimeViewContoller

-(IBAction)showCurrentTime:(id)sender
{
    NSDate *now = [NSDate date];
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setTimeStyle:NSDateFormatterMediumStyle];
    
    
    [timeLabel setText:[formatter stringFromDate:now]];
}

-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nil bundle:nil];
    
    if (self) {
        UITabBarItem *tbi = [self tabBarItem];
        [tbi setTitle:@"clock"];
    }
    
    return self;
}
@end
