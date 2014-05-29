//
//  ProfileViewController.m
//  FreshHive
//
//  Created by Diego Calvo on 5/25/14.
//  Copyright (c) 2014 Diego Calvo. All rights reserved.
//

#import "ProfileViewController.h"

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
    // Do any additional setup after loading the view.
    
    //make the profile pic appear in a nice circle
    self.profilePic.layer.cornerRadius = self.profilePic.frame.size.height /2;
    self.profilePic.layer.masksToBounds = YES;
    self.profilePic.layer.borderWidth = 0;
    

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


-(IBAction)edit:(id)sender {
    
}

-(IBAction)logout:(id)sender {
    
}



@end
