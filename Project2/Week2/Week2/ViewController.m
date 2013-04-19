//
//  ViewController.m
//  Week2
//
//  Created by Willson Ayotte (NEW) on 4/18/13.
//  Copyright (c) 2013 Willson Ayotte (NEW). All rights reserved.
//

#import "ViewController.h"
#import "factory.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    self.view.backgroundColor = [UIColor lightGrayColor];
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//buttons functions
-(IBAction)onClick:(id)sender
{
    UIButton *button = (UIButton*)sender;
    if (button == mixButton)
    {
        mixButton.enabled = false;
        indieButton.enabled = true;
        grungeButton.enabled = true;
        displayText.text = @"The Mix Album is going to be played.";
    }
    else if (button == indieButton)
    {
        mixButton.enabled = true;
        indieButton.enabled = false;
        grungeButton.enabled = true;
        displayText.text = @"The Indie Album is going to be played.";
    }
    else if (button == grungeButton)
    {
        mixButton.enabled = true;
        indieButton.enabled = true;
        grungeButton.enabled = false;
        displayText.text = @"The Grunge Album is going to be played.";
    }
}

//function to change the background color
-(IBAction)colorSelector:(id)sender
{
    UISegmentedControl *bgColorControl = (UISegmentedControl*)sender;
    if (bgColorControl != nil)
    {
        if (bgColorControl.selectedSegmentIndex == 0)
        {
            self.view.backgroundColor = [UIColor brownColor];
        }
        else if (bgColorControl.selectedSegmentIndex == 1)
        {
            self.view.backgroundColor = [UIColor magentaColor];
        }
        else if (bgColorControl.selectedSegmentIndex == 2)
        {
            self.view.backgroundColor = [UIColor cyanColor];
        }
        else if (bgColorControl.selectedSegmentIndex == 3)
        {
            self.view.backgroundColor = [UIColor lightGrayColor];
        }
    }
}

// step controller
-(IBAction)step:(id)sender
{
    
    
    UIStepper *stepControl = (UIStepper*)sender;
    if (stepControl != nil)
    {
        int stepValue = stepControl.value;
        
        stepText.text = [NSString stringWithFormat:@"$%d Tip.", stepValue];
    }
    
}


@end
