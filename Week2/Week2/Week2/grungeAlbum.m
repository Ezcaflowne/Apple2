//
//  grungeAlbum.m
//  Week2
//
//  Created by Willson Ayotte (NEW) on 4/22/13.
//  Copyright (c) 2013 Willson Ayotte (NEW). All rights reserved.
//

#import "grungeAlbum.h"

@implementation grungeAlbum

@synthesize timeForSongs,loadingTime,listeningTime;


-(id)init
{
    self = [super init];
    if (self != nil)
    {
        [self setTimeForSongs:0];
        [self setLoadingTime:0];
        [self setListeningTime:0];
    }
    return self;
}

-(void)calculateSongTime
{
    [self setSongTimeMinutes:(timeForSongs + loadingTime + listeningTime)];
    
}

@end