//
//  ViewController.h
//  Week3
//
//  Created by Willson Ayotte (NEW) on 4/22/13.
//  Copyright (c) 2013 Willson Ayotte (NEW). All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    IBOutlet UIButton *addEvent;
    IBOutlet UIButton *clearEvent;
    IBOutlet UITextView *listEvent;
    id<addEventDelegate> delegate;
}



// setting the property for the delegate
@property(strong)id<addEventDelegate> delegate;

-(IBAction)addEventView:(id)sender;
-(IBAction)clearList:(id)sender;

@end
