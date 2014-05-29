//
//  MyQsViewController.m
//  FreshHive
//
//  Created by Diego Calvo on 5/28/14.
//  Copyright (c) 2014 Diego Calvo. All rights reserved.
//

#import "MyQsViewController.h"

@interface MyQsViewController ()

@end

@implementation MyQsViewController {
    
    NSMutableArray *questions;
}


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
    questions  = [NSMutableArray arrayWithObjects:@"Regarding Pivoting: when should we change personnel too?", @"Production issue with Order #peccc29", @"Why does the quarterly report claim t-shirts as equity?", @"Sales pitch not working for a certain county", @"How does Superman shave?", nil];
}

- (void)viewDidAppear:(BOOL)animated {
    Questions *noWay = [Questions getInstance];
    [questions addObjectsFromArray:noWay.questions];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [questions count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"SimpleTableItem";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    
    cell.textLabel.text = [questions objectAtIndex:indexPath.row];
    return cell;
}



#pragma mark UITableViewDelegate
- (void)tableView: (UITableView*)tableView
  willDisplayCell: (UITableViewCell*)cell
forRowAtIndexPath: (NSIndexPath*)indexPath
{

    [cell setBackgroundColor:[UIColor colorWithRed: 41.0/255.0 green: 171.0/255.0 blue: 225.0/255.0 alpha: 1.0]];

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
