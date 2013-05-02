//
//  ViewController.m
//  Week3
//
//  Created by Willson Ayotte (NEW) on 4/22/13.
//  Copyright (c) 2013 Willson Ayotte (NEW). All rights reserved.
//

#import "ViewController.h"
#import "addEvent.h"
#import "data.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [data CreateInfo];
    // Makeing sure eventList shows default text.
    if([eventList.text isEqualToString:@""]){
        eventList.text = @"Dates shown here";
    }
    
    //Loads saved events
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if (defaults != nil){
        NSString *eventText = [defaults objectForKey:@"Saved"];
        eventList.text = eventText;
    }
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated{
    //check singleton for data, add to eventList if there is data.
    if ([[data GetInfo] eventNew] == TRUE) {
        //Pull text from eventName
        NSMutableString *viewText = [[NSMutableString alloc] initWithString:eventList.text];
        
        //Add event name and date to eventList
        [viewText appendString:[[data GetInfo] createEvent]];
        //Updates data to the eventList
        [[data GetInfo] setEventNew:FALSE];
         
    }
    
}

-(IBAction)clearList:(id)sender
{
    eventList.text = @"Dates shown here.";
}

// Save eventList
-(IBAction)addEventView:(id)sender
{
    addEvent *eventInfo = [[addEvent alloc]initWithNibName:@"addEvent" bundle:nil];
    
    // Clearing out the textview
    
    if ([eventList.text isEqualToString:@"Dates shown here."])
    {
        eventList.text = @"";
    }
    if (eventInfo !=nil)
    {
        [self presentViewController:eventInfo animated:true completion:nil];
    }
}



@end
