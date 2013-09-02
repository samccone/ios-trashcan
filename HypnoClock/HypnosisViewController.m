//
//  HypnosisViewController.m
//  HypnoClock
//
//  Created by Sam Saccone on 9/1/13.
//  Copyright (c) 2013 Sam Saccone. All rights reserved.
//

#import "HypnosisViewController.h"
#import "HypnosisView.h"

@implementation HypnosisViewController
-(void)loadView
{
    CGRect frame = [[UIScreen mainScreen] bounds];
    
    HypnosisView  *v = [[HypnosisView alloc] initWithFrame:frame];
    [self setView:v];
}

-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nil bundle:nil];
    
    if (self) {
        UITabBarItem *tbi = [self tabBarItem];
        [tbi setTitle:@"sleep"];
    }
    
    return self;
}
@end
