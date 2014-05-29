//
//  HomeViewController.m
//  FreshHive
//
//  Created by Diego Calvo on 5/26/14.
//  Copyright (c) 2014 Diego Calvo. All rights reserved.
//

#import "HomeViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

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
    
    PFUser *currentUser = [PFUser currentUser];
    if (currentUser) {
        [self performSegueWithIdentifier:@"profileViewFromHomeView" sender:self];
    }
    
    Questions *questions = [Questions getInstance];
    questions.current = 0;
    questions.count = 0;
    [questions.questions init];
    [questions.answers init];
    
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

@end
