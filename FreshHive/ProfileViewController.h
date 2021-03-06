//
//  ProfileViewController.h
//  FreshHive
//
//  Created by Diego Calvo on 5/25/14.
//  Copyright (c) 2014 Diego Calvo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ProfileViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *name;
@property (strong, nonatomic) IBOutlet UILabel *userName;
@property (strong, nonatomic) IBOutlet UILabel *company;
@property (strong, nonatomic) IBOutlet UILabel *currentTitle;
@property (strong, nonatomic) IBOutlet UILabel *previousTitles;
@property (strong, nonatomic) IBOutlet UIImageView *profilePic;

-(IBAction)edit:(id)sender;
-(IBAction)logout:(id)sender;

@end
