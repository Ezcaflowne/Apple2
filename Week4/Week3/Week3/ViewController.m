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
    // Making sure eventList shows default text...
    if([eventList.text isEqualToString:@""])
    {
        eventList.text = @"Dates shown here";
    }
    
    //Loads saved event
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if (defaults != nil)
    {
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

-(void)viewWillAppear:(BOOL)animated
{
    // check singleton for data, add to eventList if there is new data
    if ([[data GetInfo] eventNew] == TRUE) {
        // Pulling text from eventName
    	NSMutableString *textViewText = [[NSMutableString alloc] initWithString:eventList.text];
        
    	// Add event name and date to existing text from the eventList
		[textViewText appendString:[[data GetInfo] createEvent]];
    	// Updates data to the eventList
    	eventList.text = textViewText;
        
        [[data GetInfo] setEventNew:FALSE];
    }
    
    //Right swipe gesture recognizer
    rightSwipe = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(onRightSwipe:)];
    rightSwipe.direction = UISwipeGestureRecognizerDirectionRight;
    [swipeRight addGestureRecognizer:rightSwipe];
    
    [super viewWillAppear:animated];
    
    
}

-(IBAction)clearList:(id)sender
{
    eventList.text = @"Dates shown here";
}

// Saves eventList
-(IBAction)onSave:(id)sender
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    if (defaults != nil)
    {
        NSString *eventText = eventList.text;
        [defaults setObject:eventText forKey:@"Saved"];
        [defaults synchronize];
    }
    
    // showing alert for saving the data
    if([eventList.text isEqual: @"Dates shown here"])
    {
        UIAlertView *emptyAlert = [[UIAlertView alloc]initWithTitle:@"Events Cleared" message:@"There are no events to save, please add an event." delegate:nil cancelButtonTitle:@"Close" otherButtonTitles:nil];
        [emptyAlert show];
    }else{
        UIAlertView *saveAlert = [[UIAlertView alloc]initWithTitle:@"Saved!" message:@"Events saved." delegate:nil cancelButtonTitle:@"Close" otherButtonTitles:nil];
        [saveAlert show];
    }
    
}

-(void)onRightSwipe:(UISwipeGestureRecognizer*)recognizer
{
    //Swipe right functions
    if(recognizer.direction == UISwipeGestureRecognizerDirectionRight)
    {
        addEvent *eventInfo = [[addEvent alloc]initWithNibName:@"addEvent" bundle:nil];
        
        // Clearing out the textview
        
        if ([eventList.text isEqualToString:@"Dates shown here"])
        {
            eventList.text = @"";
        }
        if (eventInfo !=nil)
        {
            [self presentViewController:eventInfo animated:true completion:nil];
        }
        
    }
}


- (void)dealloc {
    [rightSwipe release];
    [rightSwipe release];
    [super dealloc];
}
@end
