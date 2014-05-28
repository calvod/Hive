//
//  SignUpViewController2.h
//  FreshHive
//
//  Created by Diego Calvo on 5/27/14.
//  Copyright (c) 2014 Diego Calvo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SignUpViewController1.h"
#import <Parse/Parse.h>

@interface SignUpViewController2 : UIViewController


@property (weak, nonatomic) IBOutlet UITextField *companyField;
@property (weak, nonatomic) IBOutlet UITextField *currentTitleField;
@property (weak, nonatomic) IBOutlet UITextField *previousTitleField;

- (IBAction)signup:(id)sender;

@end
