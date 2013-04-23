//
//  ViewController.m
//  Week3
//
//  Created by Willson Ayotte (NEW) on 4/22/13.
//  Copyright (c) 2013 Willson Ayotte (NEW). All rights reserved.
//

#import "ViewController.h"
#import "addEvent.h"
@interface ViewController ()

@end

@implementation ViewController
@synthesize delegate;

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

// sending to the textView from the addEvent view

-(void)didSave:(NSString *)nameString
{
    NSString *eventString = nameString;
    
    if([listEvent.text isEqualToString:@""])
    {
        listEvent.text = nameString;
    }
    else
    {
        listEvent.text = [listEvent.text stringByAppendingString:eventString];
    }
}

-(IBAction)clearList:(id)sender
{
    listEvent.text = @"";
}

// Button call function to open the addEvent view
-(IBAction)addEventView:(id)sender
{
    addEvent *eventInfo = [[addEvent alloc]initWithNibName:@"addEvent" bundle:nil];
    
    // Clearing out the textview
    
    if ([listEvent.text isEqualToString:@"Dates shown here"])
    {
        listEvent.text = @"";
    }
    if (eventInfo !=nil)
    {
        // calling the delegate
        eventInfo.delegate = self;
        
        [self presentViewController:eventInfo animated:true completion:nil];
    }
}

@end
