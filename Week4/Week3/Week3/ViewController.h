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
    IBOutlet UIButton *addEvent;
    IBOutlet UITextView *eventList;
}

// Button function to open addEvent view
-(IBAction)addEventView:(id)sender;

//Clears eventList
-(IBAction)clearList:(id)sender;
@end
