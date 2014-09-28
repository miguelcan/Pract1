//
//  ViewController.m
//  Lab01
//
//  Created by mike on 27/09/14.
//  Copyright (c) 2014 mike. All rights reserved.
//

#import "ViewController.h"
#define myColors [NSArray arrayWithObjects: [UIColor redColor], [UIColor greenColor], [UIColor blueColor], [UIColor yellowColor], [UIColor purpleColor], nil]

@interface ViewController ()

@end

@implementation ViewController
 int  x= 0;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)EvtColor:(id)sender {
    if (x==5) {
        x = 0;
    }
    self.lblName.textColor = [myColors objectAtIndex:x];
    x++;
}

- (IBAction)EvtBk:(id)sender {
}

- (IBAction)EvtImg:(id)sender {
}

- (IBAction)EvtNxt:(id)sender {
}
@end
