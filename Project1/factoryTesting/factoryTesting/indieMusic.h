//
//  indieMusic.h
//  factoryTesting
//
//  Created by Willson Ayotte (NEW) on 4/10/13.
//  Copyright (c) 2013 Willson Ayotte (NEW). All rights reserved.
//

#import "baseMusic.h"

@interface indieMusic : baseMusic

{
    int grungeSong;
}

typedef enum {
    NIRVANA,
    SOUNDGARDEN,
    ALICEINCHAINS
} grungeSong;

@property NSString *songArtist;
@property NSString *songTitle;
@property int totalSongTime;
@property NSString *artistAlbum;
@property int albumTimeMinutes;
@property int albumExpectedTime;
@property int numberOfTracks;
@property int totalAlbumTime;
@property int songTimeMinutes;

@end
