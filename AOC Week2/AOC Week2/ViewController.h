//
//  ViewController.h
//  Week2-1
//
//  Created by Willson Ayotte (NEW) on 4/15/13.
//  Copyright (c) 2013 Willson Ayotte (NEW). All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

{
    //UI buttons
    IBOutlet UIButton *mixButton;
    IBOutlet UIButton *indieButton;
    IBOutlet UIButton *grungeButton;
    IBOutlet UIButton *calcButton;
    // Label for background color text
    IBOutlet UILabel *stepText;
    // Stepper
    IBOutlet UIStepper *step;
    // Text field
    IBOutlet UITextField *displayText;
}
// Functions
-(IBAction)onClick:(id)sender;
-(IBAction)colorSelector:(id)sender;
-(IBAction)step:(id)sender;
-(IBAction)onClickCalc:(id)sender;
-(IBAction)showInfoView:(id)sender;

@end
