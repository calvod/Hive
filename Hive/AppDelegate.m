//
//  AppDelegate.m
//  Hive
//
//  Created by Diego Calvo on 2/16/14.
//  Copyright (c) 2014 Diego Calvo. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    //sets up the Parse ID
    [Parse setApplicationId:@"TwGj3tnZ5p5NtwEQDZOkLsAvs25jFQj9YYzRn65e"
                  clientKey:@"1Y3WEzh9BT3zKB8sVllFeH5bbDL2lUztMNc2wSuW"];
    
    // Register for push notifications
    [application registerForRemoteNotificationTypes:
     UIRemoteNotificationTypeBadge |
     UIRemoteNotificationTypeAlert |
     UIRemoteNotificationTypeSound];
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    // Override point for customization after application launch.
    self.window.rootViewController = [[UINavigationController alloc] initWithRootViewController:[[ProfileViewController alloc] init]];
    
    
    
    
    //Setup Navigation Bar
    //====================
    //Set background of bar
    [[UINavigationBar appearance] setBarTintColor:[UIColor colorWithRed:255.0f/255.0f green: 75.0f/255.0f blue:50.0f/255.0f alpha:1.0f]];
    //Set text color
    [[UINavigationBar appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObject:[UIColor whiteColor] forKey:UITextAttributeTextColor]];
    //set back button color
    [[UIBarButtonItem appearanceWhenContainedIn:[UINavigationBar class], nil] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor whiteColor], UITextAttributeTextColor,nil] forState:UIControlStateNormal];
    //set back button arrow color
    [[UINavigationBar appearance] setTintColor:[UIColor whiteColor]];    return YES;
}


//If the registration is successful, the callback method [application:didRegisterForRemoteNotificationsWithDeviceToken:] in the application delegate will be executed. We will need to implement this method and use it to inform Parse about this new device.
- (void)application:(UIApplication *)application
didRegisterForRemoteNotificationsWithDeviceToken:(NSData *)newDeviceToken {
    // Store the deviceToken in the current installation and save it to Parse.
    PFInstallation *currentInstallation = [PFInstallation currentInstallation];
    [currentInstallation setDeviceTokenFromData:newDeviceToken];
    [currentInstallation saveInBackground];
}

//When a push notification is received while the application is not in the foreground, it is displayed in the iOS Notification Center. However, if the notification is received while the app is active, it is up to the app to handle it. To do so, we can implement the [application:didReceiveRemoteNotification] method in the app delegate. In our case, we will simply ask Parse to handle it for us. Parse will create a modal alert and display the push notification's content.
- (void)application:(UIApplication *)application
didReceiveRemoteNotification:(NSDictionary *)userInfo {
    [PFPush handlePush:userInfo];
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
