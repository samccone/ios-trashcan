//
//  TimeViewContoller.h
//  HypnoClock
//
//  Created by Sam Saccone on 9/1/13.
//  Copyright (c) 2013 Sam Saccone. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TimeViewContoller : UIViewController
{
    IBOutlet UILabel *timeLabel;
}

- (IBAction)showCurrentTime:(id)sender;
@end
