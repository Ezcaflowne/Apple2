//
//  ViewController.h
//  Week2
//
//  Created by Willson Ayotte (NEW) on 4/18/13.
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
