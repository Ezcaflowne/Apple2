//
//  ViewController.h
//  Week3
//
//  Created by Willson Ayotte (NEW) on 4/22/13.
//  Copyright (c) 2013 Willson Ayotte (NEW). All rights reserved.
//

#import <UIKit/UIKit.h>
#import "addEvent.h"

@interface ViewController : UIViewController <addEventDelegate>

{
    IBOutlet UIScrollView *scrollView;
    IBOutlet UIButton *clear;
    IBOutlet UIButton *addEvent;
    IBOutlet UITextView *eventList;
    id<addEventDelegate> delegate;
}

// setting the property for the delegate
@property(strong)id<addEventDelegate> delegate;

// Button function to open addEvent view
-(IBAction)addEventView:(id)sender;
-(IBAction)clearList:(id)sender;
@end
