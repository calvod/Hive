//
//  SignUpViewController2.m
//  FreshHive
//
//  Created by Diego Calvo on 5/27/14.
//  Copyright (c) 2014 Diego Calvo. All rights reserved.
//

#import "SignUpViewController2.h"

@interface SignUpViewController2 ()

@end

@implementation SignUpViewController2

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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//make keyboard get out of the way
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    [self.companyField resignFirstResponder];
    [self.currentTitleField resignFirstResponder];
    [self.previousTitleField resignFirstResponder];
}

- (IBAction)signup:(id)sender {

    NSString *company = [self.companyField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    NSString *currenttitle = [self.currentTitleField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    NSString *previoustitle = [self.previousTitleField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];

    if ([company length] == 0 || [currenttitle length] == 0 || [previoustitle length] == 0) {
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"oops" message:@"make sure you enter all fields" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles: nil];
        [alertView show];
    } else {
        PFUser *newUser = [PFUser user];
/*
        [newUser setObject:[_fullNameField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet] forKey:@"fullname"];
        [newUser setObject:username forKey:@"username"];
        newUser.password = password;
        [newUser setObject:email forKey:@"email"];
        [newUser setObject:company forKey:@"company"];
        [newUser setObject:currenttitle forKey:@"currenttitle"];
        [newUser setObject:previoustitle forKey:@"previoustitle"];
        [newUser setObject:@"" forKey:@"myquestion"];
        [newUser signUpInBackgroundWithBlock:^(BOOL succeeded, NSError *error) {
            if (!error) {
                // Hooray! Let them use the app now.
                [self performSegueWithIdentifier:@"signUpSuccess" sender:self];
            } else {
                //NSString *errorString = [error userInfo][@"error"];
                // Show the errorString somewhere and let the user try again.
                NSLog(@"Error while signing up");
            }

    }];
    
    
    //subscribe to receive push notifications for it's previous title and current title
    PFInstallation *newInstallation = [[PFInstallation alloc] init];
    [newInstallation addUniqueObject:[newUser objectForKey:@"fullname"] forKey:@"asker"];
    [newInstallation addUniqueObject:[newUser objectForKey:@"currenttitle"] forKey:@"channels"];
    [newInstallation addUniqueObject:[newUser objectForKey:@"previoustitle"] forKey:@"channels"];
    [newInstallation saveInBackground];
  */
    }}



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

