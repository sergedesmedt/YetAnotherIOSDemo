//
//  TransformationViewController.h
//  YetAnotherIOSDrawingDemo
//
//  Created by serge desmedt on 5/12/14.
//  Copyright (c) 2014 Trojka. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TransformationView.h"

@interface TransformationViewController : UIViewController

@property (nonatomic) IBOutlet TransformationView *MainView;

- (IBAction)Done:(id)sender;

@end
