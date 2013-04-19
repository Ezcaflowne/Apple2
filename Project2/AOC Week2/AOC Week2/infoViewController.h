//
//  infoViewController.h
//  Week2-1
//
//  Created by Willson Ayotte (NEW) on 4/16/13.
//  Copyright (c) 2013 Willson Ayotte (NEW). All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>

@interface infoViewController : UIViewController <MFMessageComposeViewControllerDelegate>

- (IBAction)Contact:(id)sender;

-(IBAction)onClose:(id)sender;

@end
