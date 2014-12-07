//
//  DrawingViewConfigController.m
//  YetAnotherIOSDrawingDemo
//
//  Created by serge desmedt on 17/04/14.
//  Copyright (c) 2014 Trojka. All rights reserved.
//

#import "DrawingViewConfigController.h"

@interface DrawingViewConfigController ()

@end

@implementation DrawingViewConfigController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.DrawLineSwitch.on = self.DrawLine;
    self.DrawConnectedLinesSwitch.on = self.DrawConnectedLines;
    self.DrawRectangleSwitch.on = self.DrawRectangle;
    self.DrawEllipseSwitch.on = self.DrawEllipse;
    self.DrawArcSwitch.on = self.DrawArc;
    self.DrawBezierSwitch.on = self.DrawBezier;
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction) drawRectangleSwithChanged:(id)sender
{
    UISwitch *mySwitch = (UISwitch *)sender;
    if ([mySwitch isOn]) {
        NSLog(@"its on!");
    } else {
        NSLog(@"its off!");
    }
    
    if(mySwitch == self.DrawLineSwitch)
        self.drawItemSelectionDelegate.DrawLine = [self.DrawLineSwitch isOn];
    if(mySwitch == self.DrawConnectedLinesSwitch)
        self.drawItemSelectionDelegate.DrawConnectedLines = [self.DrawConnectedLinesSwitch isOn];
    if(mySwitch == self.DrawRectangleSwitch)
        self.drawItemSelectionDelegate.DrawRectangle = [self.DrawRectangleSwitch isOn];
    if(mySwitch == self.DrawEllipseSwitch)
        self.drawItemSelectionDelegate.DrawEllipse = [self.DrawEllipseSwitch isOn];
    if(mySwitch == self.DrawArcSwitch)
        self.drawItemSelectionDelegate.DrawArc = [self.DrawArcSwitch isOn];
    if(mySwitch == self.DrawBezierSwitch)
        self.drawItemSelectionDelegate.DrawBezier = [self.DrawBezierSwitch isOn];
}

/*
#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a story board-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

 */

@end
