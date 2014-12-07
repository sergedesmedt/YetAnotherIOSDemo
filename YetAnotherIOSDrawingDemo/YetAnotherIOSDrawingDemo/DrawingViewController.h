//
//  DrawingViewController.h
//  YetAnotherIOSDrawingDemo
//
//  Created by serge desmedt on 21/04/14.
//  Copyright (c) 2014 Trojka. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DrawingView.h"

@protocol DrawItemSelection <NSObject>

@property (nonatomic) BOOL DrawLine;
@property (nonatomic) BOOL DrawConnectedLines;
@property (nonatomic) BOOL DrawRectangle;
@property (nonatomic) BOOL DrawEllipse;
@property (nonatomic) BOOL DrawArc;
@property (nonatomic) BOOL DrawBezier;

@end


@interface DrawingViewController : UIViewController<DrawItemSelection>

@property (nonatomic) BOOL DrawRectangle;

@property (nonatomic) IBOutlet DrawingView *MainView;

- (IBAction)Done:(id)sender;

@end
