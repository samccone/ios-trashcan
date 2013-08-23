//
//  ViewController.m
//  quiz app
//
//  Created by Sam Saccone on 8/22/13.
//  Copyright (c) 2013 Sam Saccone. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@end

@implementation ViewController

-(id) initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    
    if (self) {
        questions = [[NSMutableArray alloc] init];
        answers = [[NSMutableArray alloc] init];
        
        [questions addObject:@"what is 7 + 7"];
        [answers addObject:@"14"];
        
        [questions addObject:@"what is a cow"];
        [answers addObject:@"an animal"];
    }
    NSLog(@"count at: %d", [questions count]);
    
    return self;
}

- (IBAction)showQuestion:(id)sender
{
    currentQuestionIndex++;


    if (currentQuestionIndex == [questions count]) {
        currentQuestionIndex = 0;
    }
    NSLog(@"index at: %d", currentQuestionIndex);

    NSString *question = [questions objectAtIndex:currentQuestionIndex];
    NSLog(@"displaying question: %@", question);
    
    [questionField setText:question];
    
    [answerField setText:@"???"];
}

-(IBAction)showAnswer:(id)sender
{
    NSString *answer = [answers objectAtIndex:currentQuestionIndex];
    
    NSLog(@"displaying answer %@", answer);
    [answerField setText:answer];
}
@end
