//
//  ViewController.h
//  quiz app
//
//  Created by Sam Saccone on 8/22/13.
//  Copyright (c) 2013 Sam Saccone. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    int currentQuestionIndex;
    NSMutableArray *questions;
    NSMutableArray *answers;
    
    
    IBOutlet UILabel *questionField;
    IBOutlet UILabel *answerField;
}

- (IBAction)showQuestion:(id)sender;
- (IBAction)showAnswer:(id)sender;
@end
