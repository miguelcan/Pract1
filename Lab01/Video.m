//
//  Video.m
//  Lab01
//
//  Created by mike on 02/10/14.
//  Copyright (c) 2014 mike. All rights reserved.
//

#import "Video.h"
@interface Video ()

@end

@implementation Video
@synthesize moviePlayer;
MPMoviePlayerController *mp;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)evtPlay:(id)sender {NSLog(@"XXXXXXXXX");
    NSURL *url = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"gol" ofType:@"mov" ]];
    NSLog(@"URL IS  : %@",[url absoluteString]);
    
    moviePlayer = [[MPMoviePlayerController alloc] initWithContentURL:url];
    
    [self.moviePlayer.view setFrame:CGRectMake(60, 100, 290, 200)];
    

    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(moviePlayBackDidFinish:) name:MPMoviePlayerPlaybackDidFinishNotification object:moviePlayer];
    
    moviePlayer.controlStyle = MPMovieControlStyleDefault;
    moviePlayer.shouldAutoplay = YES;
    [self.view addSubview:moviePlayer.view];
    
    mp = moviePlayer;

    CGRect playerFrame = CGRectMake(60, 100, 290, 200);
    [mp.view setFrame:playerFrame];
    [mp prepareToPlay];
    //[[moviePlayer ] play];
    //[moviePlayer setFullscreen:YES animated:YES];
}

- (IBAction)evtStop:(id)sender {
    
    [mp stop];
}

- (void) moviePlayBackDidFinish:(NSNotification*)notification {
    MPMoviePlayerController *player = [notification object];
    [[NSNotificationCenter defaultCenter] removeObserver:self name:MPMoviePlayerPlaybackDidFinishNotification object:player];
    
    if([player respondsToSelector:@selector(setFullscreen:animated:)]) {
        [player.view removeFromSuperview];
    }
    
}
@end
