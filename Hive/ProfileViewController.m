//
//  ProfileViewController.m
//  Hive
//
//  Created by Diego Calvo on 2/17/14.
//  Copyright (c) 2014 Diego Calvo. All rights reserved.
//

#import "ProfileViewController.h"
#import "EditProfileViewController.h"
#import "AnswerViewController.h"
#import "AskViewController.h"

@interface ProfileViewController ()

@end

@implementation ProfileViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    //if can't find a current user:
        //[self.navigationController pushViewController:[[LogInViewController alloc] init] animated:YES];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)edit:(id)sender {
    [self.navigationController pushViewController:[[EditProfileViewController alloc] init] animated:YES];
}

-(IBAction)logout:(id)sender {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"log out" message:[NSString stringWithFormat:@"are you sure?"] delegate:nil cancelButtonTitle:@"cancel" otherButtonTitles:@"log out"];
    [alert show];
    //if they hit cancel, cancel it,
    //if they hit log:
        //[self.navigationController pushViewController:[[LoginViewController alloc] init] animated:YES];
}

-(IBAction)answer:(id)sender {
    //[self.navigationController pushViewController:[[AnswerViewController alloc] init] animated:YES];
}

-(IBAction)ask:(id)sender {
    [self.navigationController pushViewController:[[AskViewController alloc] init] animated:YES];
}


@end
