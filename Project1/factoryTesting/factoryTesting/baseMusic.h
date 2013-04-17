//
//  baseMusic.h
//  factoryTesting
//
//  Created by Willson Ayotte (NEW) on 4/10/13.
//  Copyright (c) 2013 Willson Ayotte (NEW). All rights reserved.
//

#import <Foundation/Foundation.h>

@interface baseMusic : NSObject
{
    int musicEnum;
}
typedef enum {
    INDIE,
    MIX,
    GRUNGE
}musicEnum;

//data members for song time in minutes, albums, and array of track listings
@property NSString *albums;
@property int songTimeMinutes;

//initialize
-(id)init;

//calculation/manipulation method to find song time
-(void)calculateSongTime;


@end
