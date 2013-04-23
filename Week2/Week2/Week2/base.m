//
//  base.m
//  Week2
//
//  Created by Willson Ayotte (NEW) on 4/22/13.
//  Copyright (c) 2013 Willson Ayotte (NEW). All rights reserved.
//

#import "base.h"

@implementation base

@synthesize albums, songTimeMinutes;
//@synthesize timeInMin, milesRidden;

-(id)init
{
    self = [super init];
    if (self != nil)
    {
        [self setSongTimeMinutes:0];
        [self setAlbums:nil];
    }
    return self;
}

//calculation/manipulation method to find song time
-(void)calculateSongTime;
{
    //no calculation right now, just a statement written to the log with current value
    NSLog(@"This song will play for %i minutes", songTimeMinutes);
}



@end