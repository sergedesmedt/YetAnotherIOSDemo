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
    
    // Set the properties of our pen
    CGContextSetLineWidth(currentContext, 1.0 );
    CGContextSetRGBStrokeColor(currentContext, 1.0, 0.0, 0.0, 1.0); // select red color
    
    // We must apply the transformation before giving the drawing instructions
    //CGContextTranslateCTM (currentContext, 100, 50);
    CGAffineTransform transformationToOrigin = CGAffineTransformMakeTranslation(100, 100);
    CGContextConcatCTM ( currentContext, transformationToOrigin );
    
    CGAffineTransform transformationRotate = CGAffineTransformMakeRotation(-3.1415/4);
    CGContextConcatCTM ( currentContext, transformationRotate );
    
    {
        CGContextMoveToPoint(currentContext, 00.0f, 00.0f);
        CGContextAddLineToPoint(currentContext, 00.0f, 100.0f);
    }
    
    // Only here we effectively draw our path
    CGContextStrokePath(currentContext);
    
    CGAffineTransform transformationRotateBack = CGAffineTransformMakeRotation(3.1415/4);
    CGContextConcatCTM ( currentContext, transformationRotateBack );
    
    CGAffineTransform transformationTranslateBack = CGAffineTransformMakeTranslation(-100, -100);
    CGContextConcatCTM (currentContext, transformationTranslateBack);

    CGContextSetRGBStrokeColor(currentContext, 0.0, 0.0, 1.0, 1.0); // select blue color

    {
        CGContextMoveToPoint(currentContext, 100.0f, 100.0f);
        CGContextAddLineToPoint(currentContext, 100.0f, 200.0f);
    }
    
    // Only here we effectively draw our path
    CGContextStrokePath(currentContext);
    
}


@end
