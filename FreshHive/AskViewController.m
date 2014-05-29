//
//  AskViewController.m
//  FreshHive
//
//  Created by Diego Calvo on 5/28/14.
//  Copyright (c) 2014 Diego Calvo. All rights reserved.
//

#import "AskViewController.h"

@interface AskViewController ()

@end

@implementation AskViewController

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

-(IBAction)ask:(id)sender {
    
    //    // Create our Installation query
    //    PFQuery *pushQuery = [PFInstallation query];
    //    [pushQuery whereKey:@"deviceType" equalTo:@"ios"];
    //
    //    // Send push notification to query
    //    [PFPush sendPushMessageToQueryInBackground:pushQuery
    //                                   withMessage:self.question.text];
    
    // Send a notification to all devices subscribed to the previoustitle and currenttitle channel.
    PFUser *user = [PFUser currentUser];
    NSArray *channels = [NSArray arrayWithObjects:[user objectForKey:@"currenttitle"], [user objectForKey:@"previoustitle"], nil];
    
    NSDictionary *data = [NSDictionary dictionaryWithObjectsAndKeys:
                          self.question.text, @"alert",
                          @"Increment", @"badge",
                          @"pop.m4a", @"sound",
                          nil];
    PFPush *push = [[PFPush alloc] init];
    [push setChannels:channels];
    [push setData:data];
    [push sendPushInBackground];
    
    
    //learning Parse
    PFQuery *query = [PFQuery queryWithClassName:@"User"];
    
    [query whereKey:@"username" equalTo:user.username];
    
    [query findObjectsInBackgroundWithBlock:^(NSArray *objects, NSError *error) {
        
        NSString *className = NSStringFromClass([objects class]);
        
        NSLog(@"class is: %@", className);
        
        NSMutableArray *arr = [[NSMutableArray alloc] init];
        
        for (PFObject *Obj in objects){
            [arr addObject:Obj[@"username"]];
            
        }
        
        //here I would call the addObject: function of the NSMutableArray to add the string and then s
    }];
    
    
    
    //add to user's array of questions
    [user addObject:self.question.text forKey:@"questions"];
    
    //add to master list of questions
    [[PFInstallation currentInstallation] addObject:self.question.text forKey:@"questions"];
    [user setObject:self.question.text forKey:@"myquestion"];
    [[PFInstallation currentInstallation] setObject:@false forKey:@"answered"];
    [[PFInstallation currentInstallation] setObject:[user objectForKey:@"fullname"] forKey:@"asker"];
    [[PFInstallation currentInstallation] setObject:[user objectForKey:@"currenttitle"] forKey:@"askerCurrentTitle"];
    [[PFInstallation currentInstallation] saveInBackground];
    
    
    
    NSLog(@"Question shot");
    [self performSegueWithIdentifier:@"myQsFromAsk" sender:self];
}

//make keyboard get out of the way
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    [self.question resignFirstResponder];
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
