//
//  base.h
//  Week2
//
//  Created by Willson Ayotte (NEW) on 4/22/13.
//  Copyright (c) 2013 Willson Ayotte (NEW). All rights reserved.
//

#import <Foundation/Foundation.h>

@interface base : NSObject

{
    int musicEnum;
}

typedef enum
{
    INDIE,
    MIX,
    GRUNGE
} musicEnum;

//data members for song time in minutes

@property NSString *albums;
@property int songTimeMinutes;

//Initalize
-(id)init;

//Calculating song time
-(void)calculateSongTime;

//-(void)calculateRideTime;

@end
