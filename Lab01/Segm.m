//
//  Segm.m
//  Lab01
//
//  Created by mike on 02/10/14.
//  Copyright (c) 2014 mike. All rights reserved.
//

#import "Segm.h"

@interface Segm ()

@end

@implementation Segm
int tecos = 0;
int necaxa = 0;

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

- (IBAction)evtSegm:(id)sender {
    switch (self.segmTeam.selectedSegmentIndex) {
        case 0:
            self.imgTeam.image = [UIImage imageNamed:@"images-2.jpeg"];
            self.lblGoal.text = [NSString stringWithFormat:@"%d",tecos];
            break;
        case 1:
            self.imgTeam.image = [UIImage imageNamed:@"campeonisimo01.jpg"];
            self.lblGoal.text = [NSString stringWithFormat:@"%d",necaxa];
            break;
        default:
            break;
    }
}

- (IBAction)evtStep:(id)sender {
    self.lblGoal.text = [NSString stringWithFormat:@"%d",lroundf(self.stpGoal.value)];
    switch (self.segmTeam.selectedSegmentIndex) {
        case 0:
            tecos = lroundf(self.stpGoal.value);
            break;
        case 1:
            necaxa = lroundf(self.stpGoal.value);
            break;
        default:
            break;
    }
}
@end
