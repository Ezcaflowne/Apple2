//
//  indieAlbum.m
//  Week2-1
//
//  Created by Willson Ayotte (NEW) on 4/16/13.
//  Copyright (c) 2013 Willson Ayotte (NEW). All rights reserved.
//

#import "indieAlbum.h"

@implementation indieAlbum

@synthesize timeForSongs,loadingTime;


-(id)init
{
    self = [super init];
    if (self != nil)
    {
        [self setTimeForSongs:0];
        [self setLoadingTime:0];
    }
    return self;
}

-(void)calculateSongTime
{}

@end
