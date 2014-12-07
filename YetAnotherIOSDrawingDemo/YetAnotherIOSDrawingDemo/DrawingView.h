//
//  DrawingView.h
//  YetAnotherIOSDrawingDemo
//
//  Created by serge desmedt on 15/04/14.
//  Copyright (c) 2014 Trojka. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface DrawingView : UIView

@property (nonatomic) BOOL DrawLine;
@property (nonatomic) BOOL DrawConnectedLines;
@property (nonatomic) BOOL DrawRectangle;
@property (nonatomic) BOOL DrawEllipse;
@property (nonatomic) BOOL DrawArc;
@property (nonatomic) BOOL DrawBezier;

@end
