//
//  ViewController.m
//  Week2-1
//
//  Created by Willson Ayotte (NEW) on 4/15/13.
//  Copyright (c) 2013 Willson Ayotte (NEW). All rights reserved.
//

#import "ViewController.h"
#import "infoViewController.h"
#import "factory.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    self.view.backgroundColor = [UIColor lightGrayColor];
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//Functions for buttons
-(IBAction)onClick:(id)sender
{
    UIButton *button = (UIButton*)sender;
    if (button == mixButton)
    {
        mixButton.enabled = false;
        indieButton.enabled = true;
        grungeButton.enabled = true;
        displayText.text = @"The Mix Album is going to be played.";
    }
    else if (button == indieButton)
    {
        mixButton.enabled = true;
        indieButton.enabled = false;
        grungeButton.enabled = true;
        displayText.text = @"The Indie Album is going to be played.";
    }
    else if (button == grungeButton)
    {
        mixButton.enabled = true;
        indieButton.enabled = true;
        grungeButton.enabled = false;
        displayText.text = @"The Grunge Album is going to be played.";
    }
}


// showing my info page or second view
-(IBAction)showInfoView:(id)sender
{
    infoViewController *information = [[infoViewController alloc]initWithNibName:@"infoView" bundle:nil];
    if (information !=nil)
    {
        [self presentViewController:information animated:true completion:nil];
    }
}


// function to change the background color
-(IBAction)colorSelector:(id)sender
{
    UISegmentedControl *bgColorControl = (UISegmentedControl*)sender;
    if (bgColorControl != nil)
    {
        if (bgColorControl.selectedSegmentIndex == 0)
        {
            self.view.backgroundColor = [UIColor brownColor];
        }
        else if (bgColorControl.selectedSegmentIndex == 1)
        {
            self.view.backgroundColor = [UIColor magentaColor];
        }
        else if (bgColorControl.selectedSegmentIndex == 2)
        {
            self.view.backgroundColor = [UIColor cyanColor];
        }
        else if (bgColorControl.selectedSegmentIndex == 3)
        {
            self.view.backgroundColor = [UIColor lightGrayColor];
        }
    }
}

// Step controller
-(IBAction)step:(id)sender
{
    
    
    UIStepper *stepControl = (UIStepper*)sender;
    if (stepControl != nil)
    {
        int stepValue = stepControl.value;
        
        stepText.text = [NSString stringWithFormat:@"$%d Tip.", stepValue];
    }
    
}


//Calculation action
-(IBAction)onClickCalc:(id)sender
{
    int stepNum = step.value;
    
    
    // mixButton activated
    if (mixButton.enabled == NO)
    {
        mixAlbum *playlistChoice = (mixAlbum*)[factory createNewMusic: MIX];
        [playlistChoice setTracks:3];
        [playlistChoice setPlayingTime:5];
        
        indieButton.enabled = true;
        grungeButton.enabled = true;
        
        int totalTime = playlistChoice.tracks * playlistChoice.playingTime;
        int playTime = playlistChoice.tracks * stepNum + totalTime;
        int totalRemix = playlistChoice.tracks + stepNum;
        
        displayText.text = [NSString stringWithFormat:@"Tracks: %i. Time: %i minutes.", totalRemix, playTime];
    }
    else if (indieButton.enabled == NO)
    {
        // indieButton activated
        indieAlbum *playlistChoice = (indieAlbum*)[factory createNewMusic:INDIE];
        [playlistChoice setTimeForSongs:3];
        [playlistChoice setLoadingTime:5];
        
        mixButton.enabled = true;
        grungeButton.enabled = true;
        
        
        int totalTime = playlistChoice.timeForSongs * playlistChoice.loadingTime;
        int playTime = playlistChoice.timeForSongs * stepNum + totalTime;
        int totalRemix = playlistChoice.timeForSongs + stepNum;
        displayText.text = [NSString stringWithFormat:@"Tracks: %i. Time: %i minutes.", totalRemix, playTime];
    }
    else if (grungeButton.enabled == NO)
    {
        //grungeButton activated
        grungeAlbum *playlistChoice = (grungeAlbum*)[factory createNewMusic:GRUNGE];
        [playlistChoice setTimeForSongs:4];
        [playlistChoice setLoadingTime:2];
        mixButton.enabled = true;
        indieButton.enabled = true;
        
        int totalTime = playlistChoice.timeForSongs * playlistChoice.loadingTime;
        int playTime = playlistChoice.timeForSongs * stepNum + totalTime;
        int totalRemix = playlistChoice.timeForSongs + stepNum;
        displayText.text = [NSString stringWithFormat:@"Tracks: %i. Time: %i minutes.", totalRemix, playTime];
    }
}



@end
