//
//  ViewController.m
//  Lab01
//
//  Created by mike on 27/09/14.
//  Copyright (c) 2014 mike. All rights reserved.
//

#import "ViewController.h"
#define myColors [NSArray arrayWithObjects: [UIColor redColor], [UIColor greenColor], [UIColor blueColor], [UIColor yellowColor], [UIColor purpleColor], nil]
#define myColors2 [NSArray arrayWithObjects: [UIColor redColor], [UIColor greenColor], [UIColor blueColor], [UIColor blackColor], [UIColor purpleColor], nil]
#define imgs [NSArray arrayWithObjects: @"age0.jpg", @"age1.jpg", @"age2.jpg", @"age3.jpg", @"age4.jpg", @"age5.jpg", @"age6.jpg", @"age7.jpg", @"age8.jpg", @"age9.jpg", @"age10.jpg", @"age11.jpg", @"age12.jpg", @"age13.jpg",@"age14.jpg",nil]

#define ts [NSArray arrayWithObjects:@"age3.jpg",nil]
@interface ViewController ()

@end

@implementation ViewController
 int  x= 0;
 int bk = 3;
 int im = 1;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.ImgFace.layer.cornerRadius = 5.0;
    self.ImgFace.layer.masksToBounds = YES;
    self.ImgFace.layer.borderColor = [UIColor whiteColor].CGColor;
    self.ImgFace.layer.borderWidth = 1.0;
    self.BtnColor.layer.cornerRadius = 5.0;
    self.BtnColor.layer.masksToBounds = YES;
    self.BtnBk.layer.cornerRadius = 5.0;
    self.BtnBk.layer.masksToBounds = YES;
    self.BtnImg.layer.cornerRadius = 5.0;
    self.BtnImg.layer.masksToBounds = YES;
    self.BtnNxt.layer.cornerRadius = 5.0;
    self.BtnNxt.layer.masksToBounds = YES;
    self.lblName.layer.cornerRadius = 5.0;
    self.lblName.layer.masksToBounds = YES;
    
    
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
    bk--;
    self.lblName.backgroundColor = [myColors2 objectAtIndex:bk];
    if (bk==0) {
        bk = 4;
    }
}

- (IBAction)EvtImg:(id)sender {
    if (im==15) {
        im = 0;
    }
    self.LblAge.text = [NSString stringWithFormat:@"%d",im];
    self.ImgFace.image =[UIImage imageNamed:[imgs objectAtIndex:im]];
    im++;
}

- (IBAction)EvtNxt:(id)sender {
}
@end
