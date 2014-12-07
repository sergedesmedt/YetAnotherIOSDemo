//
//  TransformationViewController.m
//  YetAnotherIOSDrawingDemo
//
//  Created by serge desmedt on 5/12/14.
//  Copyright (c) 2014 Trojka. All rights reserved.
//

#import "TransformationViewController.h"

@interface TransformationViewController ()

@end

@implementation TransformationViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (IBAction)Done:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
