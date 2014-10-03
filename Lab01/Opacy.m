//
//  Opacy.m
//  Lab01
//
//  Created by mike on 02/10/14.
//  Copyright (c) 2014 mike. All rights reserved.
//

#import "Opacy.h"

@interface Opacy ()

@end

@implementation Opacy

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.imgCity.layer.cornerRadius = 5.0;
    self.imgCity.layer.masksToBounds = YES;
    self.imgCity.layer.borderColor = [UIColor whiteColor].CGColor;
    self.imgCity.layer.borderWidth = 1.0;
    self.btnNxt.layer.cornerRadius = 5.0;
    self.btnNxt.layer.masksToBounds = YES;
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

- (IBAction)evtSld:(UISlider *)sender {
    self.imgCity.alpha =1-(self.sldOpac.value/100);
}
@end
