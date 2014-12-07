//
//  DrawingViewController.m
//  YetAnotherIOSDrawingDemo
//
//  Created by serge desmedt on 21/04/14.
//  Copyright (c) 2014 Trojka. All rights reserved.
//

#import "DrawingViewController.h"
#import "DrawingViewConfigController.h"

@interface DrawingViewController ()

@end

@implementation DrawingViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void) setDrawLine:(BOOL)drawIt {
    self.MainView.DrawLine = drawIt;
    [self.MainView setNeedsDisplay];
}

- (BOOL) DrawLine {
    return self.MainView.DrawLine;
}

- (void) setDrawConnectedLines:(BOOL)drawIt {
    self.MainView.DrawConnectedLines = drawIt;
    [self.MainView setNeedsDisplay];
}

- (BOOL) DrawConnectedLines {
    return self.MainView.DrawConnectedLines;
}

- (void) setDrawRectangle:(BOOL)drawIt {
    self.MainView.DrawRectangle = drawIt;
    [self.MainView setNeedsDisplay];
}

- (BOOL) DrawRectangle {
    return self.MainView.DrawRectangle;
}

- (void) setDrawEllipse:(BOOL)drawIt {
    self.MainView.DrawEllipse = drawIt;
    [self.MainView setNeedsDisplay];
}

- (BOOL) DrawEllipse {
    return self.MainView.DrawEllipse;
}

- (void) setDrawArc:(BOOL)drawIt {
    self.MainView.DrawArc = drawIt;
    [self.MainView setNeedsDisplay];
}

- (BOOL) DrawArc {
    return self.MainView.DrawArc;
}

- (void) setDrawBezier:(BOOL)drawIt {
    self.MainView.DrawBezier = drawIt;
    [self.MainView setNeedsDisplay];
}

- (BOOL) DrawBezier {
    return self.MainView.DrawBezier;
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    DrawingViewConfigController* target = (DrawingViewConfigController*)segue.destinationViewController;
    
    // your controller is not yet loaded here, so you cannot directly set the UISwitch-es in the DrawingViewConfigController
    target.DrawLine = self.DrawLine;
    target.DrawConnectedLines = self.DrawConnectedLines;
    target.DrawRectangle = self.DrawRectangle;
    target.DrawEllipse = self.DrawEllipse;
    target.DrawArc = self.DrawArc;
    target.DrawBezier = self.DrawBezier;
    
    target.drawItemSelectionDelegate = self;
}

- (IBAction)Done:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    self.DrawLine = FALSE;
    self.DrawConnectedLines = FALSE;
    self.DrawRectangle = FALSE;
    self.DrawEllipse = FALSE;
    self.DrawArc = FALSE;
    self.DrawBezier = FALSE;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
