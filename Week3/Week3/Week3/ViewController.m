//
//  ViewController.m
//  Week3
//
//  Created by Willson Ayotte (NEW) on 4/22/13.
//  Copyright (c) 2013 Willson Ayotte (NEW). All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [addEvent release];
    [deleteEvent release];
    [clearEvent release];
    [listView release];
    [super dealloc];
}

-(IBAction)clearList:(id)sender
{
    eventList.text = @"";
}

// Button call function to open the addEvent view
-(IBAction)addEventView:(id)sender
{
    addEvent *eventInfo = [[addEvent alloc]initWithNibName:@"addEvent" bundle:nil];
    
    // Clearing out the textview
    
    if ([eventList.text isEqualToString:@"Dates shown here"])
    {
        eventList.text = @"";
    }
    if (eventInfo !=nil)
    {
        // calling the delegate
        eventInfo.delegate = self;
        
        [self presentViewController:eventInfo animated:true completion:nil];
    }
}

@end
