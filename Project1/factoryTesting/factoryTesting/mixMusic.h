//
//  mixMusic.h
//  factoryTesting
//
//  Created by Willson Ayotte (NEW) on 4/10/13.
//  Copyright (c) 2013 Willson Ayotte (NEW). All rights reserved.
//

#import "baseMusic.h"

@interface mixMusic : baseMusic

// data members for remixes and time to play per remix
@property int remixes;
@property int timePerRemix;

// calculation to override
-(void)calculateSongTime;

@end
