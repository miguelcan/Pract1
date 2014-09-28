//
//  ViewController.h
//  Lab01
//
//  Created by mike on 27/09/14.
//  Copyright (c) 2014 mike. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *lblName;

@property (strong, nonatomic) IBOutlet UIImageView *ImgFace;

@property (strong, nonatomic) IBOutlet UIButton *BtnColor;

@property (strong, nonatomic) IBOutlet UIButton *BtnBk;

@property (strong, nonatomic) IBOutlet UIButton *BtnImg;

@property (strong, nonatomic) IBOutlet UIButton *BtnNxt;

@property (strong, nonatomic) IBOutlet UILabel *LblAge;

- (IBAction)EvtColor:(id)sender;

- (IBAction)EvtBk:(id)sender;

- (IBAction)EvtImg:(id)sender;

- (IBAction)EvtNxt:(id)sender;


@end

