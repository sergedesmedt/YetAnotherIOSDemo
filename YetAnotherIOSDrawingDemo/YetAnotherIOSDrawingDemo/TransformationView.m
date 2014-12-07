//
//  TransformationView.m
//  YetAnotherIOSDrawingDemo
//
//  Created by serge desmedt on 22/04/14.
//  Copyright (c) 2014 Trojka. All rights reserved.
//

#import "TransformationView.h"

@implementation TransformationView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{

    CGContextRef currentContext = UIGraphicsGetCurrentContext();
    
    // We must apply the transformation before giving the drawing instructions
    //CGContextTranslateCTM (currentContext, 100, 50);
    //CGAffineTransform transformation = CGAffineTransformMakeTranslation(100, 50);
    CGAffineTransform transformation = CGAffineTransformMakeRotation(3.1415/4);
    //CGContextConcatCTM ( currentContext, transformation );
    
    // Set the properties of our pen
    CGContextSetLineWidth(currentContext, 1.0 );
    CGContextSetRGBStrokeColor(currentContext, 1.0, 0.0, 0.0, 1.0); // select red color
    
    // Start constructing a path
    // We are not yet drawing !!!
    //if(self.DrawLine == TRUE)
    {
        CGContextMoveToPoint(currentContext, 10.0f, 10.0f);
        CGContextAddLineToPoint(currentContext, 100.0f, 100.0f);
    }
    
    // Only here we effectively draw our path
    CGContextStrokePath(currentContext);
    
}


@end
