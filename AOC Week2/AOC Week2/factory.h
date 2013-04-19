//
//  factory.h
//  Week2-1
//
//  Created by Willson Ayotte (NEW) on 4/16/13.
//  Copyright (c) 2013 Willson Ayotte (NEW). All rights reserved.
//

#import <Foundation/Foundation.h>
#import "base.h"
#import "mixAlbum.h"
#import "indieAlbum.h"
#import "grungeAlbum.h"

@interface factory : NSObject

+(base*)createNewMusic:(int)musicType;

@end