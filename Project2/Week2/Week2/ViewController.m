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

//Functions for buttons
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

@end
