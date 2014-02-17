//
//  ProfileViewController.h
//  Hive
//
//  Created by Diego Calvo on 2/17/14.
//  Copyright (c) 2014 Diego Calvo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>
#import <FacebookSDK/FacebookSDK.h>

@interface ProfileViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *name;
@property (strong, nonatomic) IBOutlet UILabel *userName;
@property (strong, nonatomic) IBOutlet UILabel *company;
@property (strong, nonatomic) IBOutlet UILabel *currentTitle;
@property (strong, nonatomic) IBOutlet UITextView *previousTitles;

-(IBAction)edit:(id)sender;
-(IBAction)logout:(id)sender;
-(IBAction)answer:(id)sender;
-(IBAction)ask:(id)sender;


@end
