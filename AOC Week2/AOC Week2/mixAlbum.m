//
//  mixAlbum.m
//  Week2-1
//
//  Created by Willson Ayotte (NEW) on 4/16/13.
//  Copyright (c) 2013 Willson Ayotte (NEW). All rights reserved.
//

#import "mixAlbum.h"

@implementation mixAlbum

@synthesize tracks,playingTime;


-(id)init
{
    self = [super init];
    if (self != nil)
    {
        [self setTracks:0];
        [self setPlayingTime:0];
    }
    return self;
}

-(void)calculateSongTime
{}

@end
