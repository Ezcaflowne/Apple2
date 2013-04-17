//
//  mixMusic.m
//  factoryTesting
//
//  Created by Willson Ayotte (NEW) on 4/10/13.
//  Copyright (c) 2013 Willson Ayotte (NEW). All rights reserved.
//

#import "mixMusic.h"

@implementation mixMusic

@synthesize remixes, timePerRemix;

//customizing init to set unique data members
-(id)init
{
    self = [super init];
    if (self !=nil)
    {
        [self setRemixes:3];
        [self setTimePerRemix:6];
    }
    return self;
};

//overriding the base music song time to factor in unique data members
-(void)calculateSongTime
{
    [self setSongTimeMinutes:(remixes * timePerRemix)];
    NSLog(@"This remix will play for %i minutes.", self.songTimeMinutes);
}

@end
