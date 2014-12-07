//
//  DrawingViewConfigController.h
//  YetAnotherIOSDrawingDemo
//
//  Created by serge desmedt on 17/04/14.
//  Copyright (c) 2014 Trojka. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DrawingViewController.h"

@interface DrawingViewConfigController : UITableViewController

@property (nonatomic) BOOL DrawLine;
@property (nonatomic) BOOL DrawConnectedLines;
@property (nonatomic) BOOL DrawRectangle;
@property (nonatomic) BOOL DrawEllipse;
@property (nonatomic) BOOL DrawArc;
@property (nonatomic) BOOL DrawBezier;

@property (nonatomic, assign) id<DrawItemSelection> drawItemSelectionDelegate;

@property (strong, nonatomic) IBOutlet UISwitch *DrawLineSwitch;
@property (strong, nonatomic) IBOutlet UISwitch *DrawConnectedLinesSwitch;
@property (strong, nonatomic) IBOutlet UISwitch *DrawRectangleSwitch;
@property (strong, nonatomic) IBOutlet UISwitch *DrawEllipseSwitch;
@property (strong, nonatomic) IBOutlet UISwitch *DrawArcSwitch;
@property (strong, nonatomic) IBOutlet UISwitch *DrawBezierSwitch;

- (IBAction) drawRectangleSwithChanged:(id)sender;

@end
