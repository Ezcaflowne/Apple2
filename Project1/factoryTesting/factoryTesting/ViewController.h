//
//  ViewController.h
//  factoryTesting
//
//  Created by Willson Ayotte (NEW) on 4/10/13.
//  Copyright (c) 2013 Willson Ayotte (NEW). All rights reserved.
//

#import <UIKit/UIKit.h>
#import "musicfactory.h"

@interface ViewController : UIViewController
{
    UILabel * titleLable;
    UILabel * mixMusicLabel;
    UILabel * mixMusicTimeLabel;
    int timeToCompleteRemix;
    UILabel * indieLabel;
    UILabel * indieTimeLabel;
    int timeToCompleteAlbum;
    UILabel * grungeTimeLabel;
    NSString *grungeTimeString;
    UILabel * grungeLabel;
    int timeToCompleteGrunge;
    
}

@end
