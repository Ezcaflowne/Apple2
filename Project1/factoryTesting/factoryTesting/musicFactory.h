//
//  musicFactory.h
//  factoryTesting
//
//  Created by Willson Ayotte (NEW) on 4/10/13.
//  Copyright (c) 2013 Willson Ayotte (NEW). All rights reserved.
//

#import <Foundation/Foundation.h>
#import "baseMusic.h"
#import "mixMusic.h"
#import "indieMusic.h"
#import "grungeMusic.h"

@interface musicfactory : NSObject

+(baseMusic *)createNewMusic: (int)musicType;

@end
