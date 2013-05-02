//
//  data.m
//  Week3
//
//  Created by Willson Ayotte (NEW) on 5/1/13.
//  Copyright (c) 2013 Willson Ayotte (NEW). All rights reserved.
//

#import "data.h"

@implementation data

@synthesize eventName, eventDate, eventNew;

static data *_information = nil;

+(void)CreateInfo{
    if (_information == nil) {
        [[self alloc] init];
    }
}

+(data*)GetInfo{
    return _information ;
}

+(id)alloc{
    _information = [super alloc];
    return _information;
}

-(id)init{
    if (self = [super init]){
        eventNew = FALSE;
    }
    return self;
}

-(NSString*)createEvent{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    if (dateFormatter !=nil) {
        [dateFormatter setDateFormat:@"MMMM dd, y - hh:mm a"];
    }
    NSString *eventString = [[NSString alloc] initWithFormat:@"%@\n%@\n\n", eventName, [dateFormatter stringFromDate:eventDate]];
    return eventString;
}

@end
