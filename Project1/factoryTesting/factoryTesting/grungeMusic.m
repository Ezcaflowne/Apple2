//
//  grungeMusic.m
//  factoryTesting
//
//  Created by Willson Ayotte (NEW) on 4/10/13.
//  Copyright (c) 2013 Willson Ayotte (NEW). All rights reserved.
//

#import "grungeMusic.h"

@implementation grungeMusic

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
