//
//  base.m
//  Week2
//
//  Created by Willson Ayotte (NEW) on 4/18/13.
//  Copyright (c) 2013 Willson Ayotte (NEW). All rights reserved.
//

#import "base.h"

#import "base.h"

@implementation base

@synthesize albums, songTimeMinutes;

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
{}



@end
