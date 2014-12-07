//
//  DrawingView.m
//  YetAnotherIOSDrawingDemo
//
//  Created by serge desmedt on 15/04/14.
//  Copyright (c) 2014 Trojka. All rights reserved.
//

#import "DrawingView.h"

@implementation DrawingView

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
    
    // Set the properties of our pen
    CGContextSetLineWidth(currentContext, 1.0 );
    CGContextSetRGBStrokeColor(currentContext, 1.0, 0.0, 0.0, 1.0); // select red color
    
    // Start constructing a path
    // We are not yet drawing !!!
    if(self.DrawLine == TRUE)
    {
        CGContextMoveToPoint(currentContext, 10.0f, 10.0f);
        CGContextAddLineToPoint(currentContext, 100.0f, 100.0f);
    }

    
    if(self.DrawConnectedLines == TRUE)
    {
        CGContextMoveToPoint(currentContext, 55.0f, 110.0f);
        CGContextAddLineToPoint(currentContext, 100.0f, 150.0f);
        CGContextAddLineToPoint(currentContext, 10.0f, 150.0f);
        //CGContextClosePath(currentContext);
    }
    
    if(self.DrawRectangle == TRUE)
    {
        CGRect recRectangle = CGRectMake(60,170,200,80);
        CGContextAddRect(currentContext, recRectangle);
    }
    
    if(self.DrawEllipse == TRUE)
    {
        CGRect ellipseRectangle = CGRectMake(60,170,200,80);
        CGContextAddEllipseInRect(currentContext, ellipseRectangle);
    }
    
    if(self.DrawArc == TRUE)
    {
        CGContextAddArc(currentContext, 100, 150, 30, 0, 1, 1);
    }
    
    
    // This overwrites the value set by the previous call: no red shapes will be drawn
    CGContextSetRGBStrokeColor(currentContext, 0.0, 0.0, 1.0, 1.0); // select blue color
    
    // Only here we effectively draw our path
    CGContextStrokePath(currentContext);
}

@end
