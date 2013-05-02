//
//  addEvent.h
//  Week3
//
//  Created by Willson Ayotte (NEW) on 4/22/13.
//  Copyright (c) 2013 Willson Ayotte (NEW). All rights reserved.
//

#import <UIKit/UIKit.h>


@interface addEvent : UIViewController
{
    IBOutlet UILabel *keyboardLabel;
    IBOutlet UILabel *dateLabel;
    IBOutlet UILabel *swipeLeft;
    UISwipeGestureRecognizer *leftSwipe;
    IBOutlet UITextField *eventName;
    IBOutlet UIDatePicker *picker;
    IBOutlet UIButton *close;
    NSDate *eventDate;
}

// Close Keyboard button function
-(IBAction)onClose:(id)sender;

// Save Event button function
-(IBAction)onSave:(id)sender;


@end
