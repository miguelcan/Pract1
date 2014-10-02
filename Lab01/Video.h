//
//  Video.h
//  Lab01
//
//  Created by mike on 02/10/14.
//  Copyright (c) 2014 mike. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MediaPlayer/MediaPlayer.h>

@class MPMoviePlayerController;

@interface Video : UIViewController
{
    MPMoviePlayerController *moviePlayer;
}

@property (strong,nonatomic) MPMoviePlayerController *moviePlayer;

- (IBAction)evtPlay:(id)sender;

@end
