//
//  ViewController.m
//  factoryTesting
//
//  Created by Willson Ayotte (NEW) on 4/10/13.
//  Copyright (c) 2013 Willson Ayotte (NEW). All rights reserved.
//

#import "ViewController.h"
#import "UIColor_MyColor.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    
    self.view.backgroundColor = [UIColor BackgroundColor];
    
    
    
    titleLable = [[UILabel alloc]initWithFrame:CGRectMake(5.0f, 0.0f, 320.0f, 45.0f)];
    if (titleLable != nil) {
        titleLable.backgroundColor = [UIColor BackgroundColor];
        titleLable.text =@"The Music Factory";
        titleLable.textAlignment = NSTextAlignmentCenter;
        titleLable.textColor =[UIColor whiteColor];
        
    }
    [self.view addSubview:titleLable];
    
    //MIX MUSIC SECTION
    
    //mix song and time per song/remix
    mixMusic *playlistChoice = (mixMusic*)[musicfactory createNewMusic: MIX];
    
    if (playlistChoice !=nil){
        
        [playlistChoice setAlbums:@"Mix Album"];
        [playlistChoice setRemixes:16];
        [playlistChoice calculateSongTime];
        
        timeToCompleteRemix = [playlistChoice songTimeMinutes];
        
        //calculate and log the song time
        [playlistChoice calculateSongTime];
        
        mixMusicLabel = [[UILabel alloc] initWithFrame:CGRectMake(5.0f, 60.0f, 320.0f, 45.0f)];
        if (mixMusicLabel != nil) {
            mixMusicLabel.backgroundColor= [UIColor LabelColor];
            mixMusicLabel.text = [NSString stringWithFormat:@"The %@ you selected, will be completed in %d minutes.", playlistChoice.albums, playlistChoice.timePerRemix];
            mixMusicLabel.textColor =[UIColor whiteColor];
            mixMusicLabel.numberOfLines= 3;
            
            // call into view
            [self.view addSubview:mixMusicLabel];
        }
        
        mixMusicTimeLabel = [[UILabel alloc]initWithFrame:CGRectMake(5.0, 110.0f, 320.0f, 45.0f)];
        if (mixMusicTimeLabel != nil) {
            mixMusicTimeLabel.backgroundColor =[UIColor LabelColor];
            mixMusicTimeLabel.text = [NSString stringWithFormat:@"It will take a total of %d minutes to complete the %@.",timeToCompleteRemix, playlistChoice.albums];
            mixMusicTimeLabel.textColor =[UIColor whiteColor];
            mixMusicTimeLabel.numberOfLines = 2;
        }
        // call into view
        [self.view addSubview:mixMusicTimeLabel];
    }
    
    //Indie MUSIC SECTION
    
    //created Indie artist, song, and length
    indieMusic *indieArtist = (indieMusic*)[musicfactory createNewMusic: INDIE];
    
    if (indieArtist !=nil)
    {
        [indieArtist setAlbums:@"Indie Albums"];
        [indieArtist setSongArtist:@"The XX"];
        [indieArtist setSongTitle:@"Shelter"];
        [indieArtist setSongTimeMinutes:4.5];
        [indieArtist setArtistAlbum:@"XX"];
        [indieArtist setAlbumExpectedTime:120];
        [indieArtist setNumberOfTracks:11];
        
        
        timeToCompleteAlbum = [indieArtist albumExpectedTime];
        
        //calculate and log music time
        [indieArtist calculateSongTime];
        int mySongTime = indieArtist.totalSongTime;
        NSLog(@"%i", mySongTime);
        
        indieLabel = [[UILabel alloc]initWithFrame:CGRectMake(5.0f, 160.0f, 320.0f, 45.0f)];
        if (indieLabel != nil) {
            indieLabel.backgroundColor = [UIColor LabelColor];
            indieLabel.text = [NSString stringWithFormat:@"You are hearing %@, from the %@ album, by %@.", indieArtist.songTitle, indieArtist.artistAlbum, indieArtist.songArtist];
            indieLabel.textColor =[UIColor whiteColor];
            indieLabel.numberOfLines = 3;
        }
        [self.view addSubview:indieLabel];
        
        indieTimeLabel = [[UILabel alloc]initWithFrame:CGRectMake(5.0f, 210.0f, 320.0f, 45.0f)];
        if (indieTimeLabel != nil) {
            indieTimeLabel.backgroundColor= [UIColor LabelColor];
            indieTimeLabel.text = [NSString stringWithFormat:@"It should take you about %d minutes to complete %@.", timeToCompleteAlbum, indieArtist.artistAlbum];
            indieTimeLabel.textColor =[UIColor whiteColor];
            indieTimeLabel.numberOfLines = 2;
        }
        [self.view addSubview:indieTimeLabel];
        
    }
    
    //GRUNGE SECTION
    //created grunge album information
    grungeMusic *grungeAlbum = (grungeMusic*)[musicfactory createNewMusic: GRUNGE];
    
    if (grungeAlbum != nil) {
        [grungeAlbum setAlbums:@"Grunge Albums"];
        [grungeAlbum setTimeForSongs:130];
        [grungeAlbum setLoadingTime:10];
        [grungeAlbum setListeningTime:120];
        [grungeAlbum calculateSongTime];
        
        timeToCompleteGrunge = [grungeAlbum songTimeMinutes];
        
        grungeLabel = [[UILabel alloc]initWithFrame:CGRectMake(5.0f, 260.0f, 320.0f, 45.0f)];
        if (grungeLabel) {
            grungeLabel.backgroundColor = [UIColor LabelColor];
            grungeLabel.text = [NSString stringWithFormat:@"Your %@ will take a total of %d minutes to complete.", grungeAlbum.albums, timeToCompleteGrunge];
            grungeLabel.textColor =[UIColor whiteColor];
            grungeLabel.numberOfLines = 2;
        }
        
        [self.view addSubview:grungeLabel];
    }
    grungeTimeString = [NSString stringWithFormat:@"It wilk take %d minutes for songs, %d for loading and %d minutes of listening.", grungeAlbum.timeForSongs, grungeAlbum.loadingTime, grungeAlbum.listeningTime];
    
    grungeTimeLabel = [[UILabel alloc]initWithFrame:CGRectMake(5.0f, 310.0f, 320.0f, 65.0f)];
    if (grungeTimeLabel!= nil) {
        grungeTimeLabel.backgroundColor = [UIColor LabelColor];
        grungeTimeLabel.text = grungeTimeString;
        grungeTimeLabel.textColor =[UIColor whiteColor];
        grungeTimeLabel.numberOfLines = 3;
    }
    
    [self.view addSubview:grungeTimeLabel];
    
    
    
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end