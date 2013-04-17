//
//  musicFactory.m
//  factoryTesting
//
//  Created by Willson Ayotte (NEW) on 4/10/13.
//  Copyright (c) 2013 Willson Ayotte (NEW). All rights reserved.
//

#import "musicFactory.h"

@implementation musicfactory

+(baseMusic *)createNewMusic: (int)musicType;
{
    //mix requested
    if (musicType == MIX){
        return [[mixMusic alloc] init];
    
        //indie music is requested
    } else if (musicType == INDIE){
        return [[indieMusic alloc] init];
        
        //grunge music is requested
    }else if (musicType == GRUNGE){
        return [[grungeMusic alloc] init];
    }
    
    else return nil;
}

@end