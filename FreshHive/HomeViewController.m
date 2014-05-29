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
    
    
    [[UITabBar appearance] setTintColor:[UIColor colorWithRed:41/255.0f green:171/255.0f blue:225/255.0f alpha:1.0f]];

    self.tabBarController.moreNavigationController.navigationBar.tintColor = [UIColor redColor];

    
}

#pragma mark UITableViewDelegate
- (void)tableView: (UITableView*)tableView
  willDisplayCell: (UITableViewCell*)cell
forRowAtIndexPath: (NSIndexPath*)indexPath
{
    cell.backgroundColor = indexPath.row % 2
    ? [UIColor colorWithRed: 100 green: 32 blue: 1.0 alpha: 1.0]
    : [UIColor whiteColor];
    cell.textLabel.backgroundColor = [UIColor clearColor];
    cell.detailTextLabel.backgroundColor = [UIColor clearColor];
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
