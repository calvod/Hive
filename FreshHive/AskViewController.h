//
//  AskViewController.h
//  FreshHive
//
//  Created by Diego Calvo on 5/28/14.
//  Copyright (c) 2014 Diego Calvo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>
#import "Questions.h"

@interface AskViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITextView *question;

-(IBAction)ask:(id)sender;

@end
