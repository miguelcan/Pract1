//
//  Segm.h
//  Lab01
//
//  Created by mike on 02/10/14.
//  Copyright (c) 2014 mike. All rights reserved.
//

#import <UIKit/UIKit.h>

extern int tecos;
extern int necaxa;

@interface Segm : UIViewController

@property (strong, nonatomic) IBOutlet UISegmentedControl *segmTeam;

@property (strong, nonatomic) IBOutlet UIImageView *imgTeam;

@property (strong, nonatomic) IBOutlet UIStepper *stpGoal;

@property (strong, nonatomic) IBOutlet UILabel *lblGoal;

- (IBAction)evtSegm:(id)sender;

- (IBAction)evtStep:(id)sender;


@end
