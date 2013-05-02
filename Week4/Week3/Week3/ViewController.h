//
//  ViewController.h
//  Week3
//
//  Created by Willson Ayotte (NEW) on 4/22/13.
//  Copyright (c) 2013 Willson Ayotte (NEW). All rights reserved.
//

#import <UIKit/UIKit.h>
#import "addEvent.h"

@interface ViewController : UIViewController

{
    IBOutlet UIButton *clear;
    IBOutlet UITextView *eventList;
    IBOutlet UIButton *save;
    UISwipeGestureRecognizer *rightSwipe;
    IBOutlet UILabel *swipeRight;
    
}

// Saves eventList
-(IBAction)onSave:(id)sender;

// Clears text view
-(IBAction)clearList:(id)sender;
@end
