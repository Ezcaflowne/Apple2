//
//  factory.m
//  Week2
//
//  Created by Willson Ayotte (NEW) on 4/22/13.
//  Copyright (c) 2013 Willson Ayotte (NEW). All rights reserved.
//

#import "factory.h"

@implementation factory

+(base *)createNewMusic:(int)musicType
{
    if (musicType == MIX)
    {
        return [[mixAlbum alloc]init];
    }else if (musicType == INDIE)
    {
        return [[indieAlbum alloc]init];
    }else if (musicType == GRUNGE)
    {
        return [[grungeAlbum alloc]init];
    }else
        return nil;
};

@end