//
//  addEvent.m
//  Week3
//
//  Created by Willson Ayotte (NEW) on 4/22/13.
//  Copyright (c) 2013 Willson Ayotte (NEW). All rights reserved.
//

#import "addEvent.h"
#import "data.h"

@interface addEvent ()

@end

@implementation addEvent

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    
    // Setting the minimum date for the picker
    picker.minimumDate = [NSDate date];
    
    // Keyboard notification functions, willShow and willHide
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(keyboardWillShow:) name:UIKeyboardWillShowNotification object:nil];
    
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(keyboardWillHide:) name:UIKeyboardWillHideNotification object:nil];
    
    //Left swipe gesture recognizer
    leftSwipe = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(onLeftSwipe:)];
    leftSwipe.direction = UISwipeGestureRecognizerDirectionLeft;
    [swipeLeft addGestureRecognizer:leftSwipe];
    close.hidden = true;
    keyboardLabel.hidden = true;
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

// happens when keyboard appears
-(void)keyboardWillShow:(NSNotification*)notification
{
    close.hidden = false;
    keyboardLabel.hidden = false;
    dateLabel.hidden = true;
}

//happens when keyboard is hidden
-(void)keyboardWillHide:(NSNotification*)notification
{
    close.hidden = true;
    keyboardLabel.hidden = true;
    dateLabel.hidden = false;
}

// Closes keyboard and hides listView because it kept wanting to pop up after I closed the keyboard.
-(IBAction)onClose:(id)sender
{
    [eventName resignFirstResponder];
}

// All this happens when the left swipe is activated.
-(void)onLeftSwipe:(UISwipeGestureRecognizer*)recognizerLeft
{
    if(recognizerLeft.direction == UISwipeGestureRecognizerDirectionLeft)
    {
        if ([eventName.text isEqualToString:@""])
        {
            UIAlertView *error = [[UIAlertView alloc]initWithTitle:@"Error" message:@"Please enter event name" delegate:nil cancelButtonTitle:@"Fix it!" otherButtonTitles:nil];
            [error show];
        }else{
            
            // Setting the Date string
            [[data GetInfo] setEventDate:picker.date];
            
            // Saving to eventList
            [[data GetInfo] setEventName:eventName.text];
            
            // trigger alert of saved event
            [[data GetInfo] setEventNew:TRUE];
            
            UIAlertView *successAlert = [[UIAlertView alloc]initWithTitle:@"Saved" message:@"New event saved." delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
            [successAlert show];
            
            // sending the addEvent View away
            [self dismissViewControllerAnimated:true completion:nil];
        }
        
    }
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end