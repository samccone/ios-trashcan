//
//  HypnosisView.m
//  Hypnosister
//
//  Created by Sam Saccone on 8/28/13.
//  Copyright (c) 2013 Sam Saccone. All rights reserved.
//

#import "HypnosisView.h"

@implementation HypnosisView

-(id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    
    if (self) {
        [self setBackgroundColor:[UIColor clearColor]];
    }
    
    return self;
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
    
    for(float currentRadius = maxRadius; currentRadius > 0; currentRadius -= 20) {
        [[UIColor lightGrayColor] setStroke];
        CGContextAddArc(ctx, center.x, center.y, currentRadius, 0, 2*M_PI, YES);
        CGContextStrokePath(ctx);
    }
    

}
@end
