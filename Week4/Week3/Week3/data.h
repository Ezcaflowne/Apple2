//
//  data.h
//  Week3
//
//  Created by Willson Ayotte (NEW) on 5/1/13.
//  Copyright (c) 2013 Willson Ayotte (NEW). All rights reserved.
//

#import <Foundation/Foundation.h>

@interface data : NSObject

@property (nonatomic, copy) NSString *eventName;
@property (nonatomic, copy) NSDate *eventDate;
@property BOOL eventNew;

+(void)CreateInfo;
+(data*)GetInfo;
-(NSString*)createEvent;

@end
