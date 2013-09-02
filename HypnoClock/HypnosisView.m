//
//  HypnosisView.m
//  Hypnosister
//
//  Created by Sam Saccone on 8/28/13.
//  Copyright (c) 2013 Sam Saccone. All rights reserved.
//

#import "HypnosisView.h"

@implementation HypnosisView
@synthesize circleColor;

-(id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    
    if (self) {
        [self setBackgroundColor:[UIColor clearColor]];
        [self setCircleColor:[UIColor lightGrayColor]];
    }
    
    return self;
}

-(BOOL)canBecomeFirstResponder
{
    return YES;
}

-(void)motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event
{
    if (motion == UIEventSubtypeMotionShake) {
        [self setCircleColor:[UIColor redColor]];
        [self setNeedsDisplay];
    }
}

-(void)drawRect:(CGRect)rect
{
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGRect bounds = [self bounds];
    
    
    CGPoint center;
    
    center.x = bounds.origin.x + bounds.size.width/2;
    center.y = bounds.origin.y + bounds.size.height/2;
    
    float maxRadius = hypotf(bounds.size.width, bounds.size.height) / 2;
    
    CGContextSetLineWidth(ctx, 5);
    
    NSArray *colors = [[NSArray alloc] initWithObjects: [UIColor redColor], [UIColor blueColor], [UIColor orangeColor], Nil];
    
    for(float currentRadius = maxRadius; currentRadius > 0; currentRadius -= 20) {
        [[colors objectAtIndex:rand()%[colors count]] setStroke];
        CGContextAddArc(ctx, center.x, center.y, currentRadius, 0, 2*M_PI, YES);
        CGContextStrokePath(ctx);
    }
    
    NSString *text = @"you are sleepy";
    
    UIFont *font = [UIFont boldSystemFontOfSize:28];
    
    CGRect textRect;
    
    textRect.size = [text sizeWithFont:font];
    textRect.origin.x = center.x - textRect.size.width / 2;
    textRect.origin.y = center.y - textRect.size.height / 2;

    [[UIColor blackColor] setFill];
    
    [text drawInRect:textRect withFont:font];
}
@end
