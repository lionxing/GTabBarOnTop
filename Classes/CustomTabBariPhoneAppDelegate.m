//
//  CustomTabBariPhoneAppDelegate.m
//  CustomTabBariPhone
//
//  Created by Daniel Hollis on 27/09/2010.
//  Copyright 2010 Guerrilla Digital Media. All rights reserved.
//

#import "CustomTabBariPhoneAppDelegate.h"
#import "GTabBar.h"
@implementation CustomTabBariPhoneAppDelegate

@synthesize window;


#pragma mark -
#pragma mark Application lifecycle

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
	
	/*///////////*/
	GTabTabItem *tabItem1 = [[[GTabTabItem alloc] initWithFrame:CGRectMake(0, 0, 64, 49) normalState:@"tabbar1.png" toggledState:@"tabbar1_h.png"]autorelease];
	GTabTabItem *tabItem2 = [[[GTabTabItem alloc] initWithFrame:CGRectMake(64, 0, 64, 49) normalState:@"tabbar2.png" toggledState:@"tabbar2_h.png"]autorelease];
	GTabTabItem *tabItem3 = [[[GTabTabItem alloc] initWithFrame:CGRectMake(128, 0, 64, 49) normalState:@"tabbar3.png" toggledState:@"tabbar3_h.png"]autorelease];
	GTabTabItem *tabItem4 = [[[GTabTabItem alloc] initWithFrame:CGRectMake(192, 0, 64, 49) normalState:@"tabbar4.png" toggledState:@"tabbar4_h.png"]autorelease];
	GTabTabItem *tabItem5 = [[[GTabTabItem alloc] initWithFrame:CGRectMake(256, 0, 64, 49) normalState:@"tabbar5.png" toggledState:@"tabbar5_h.png"]autorelease];

	
	UIViewController *tabViewController1 = [[[UIViewController alloc] initWithNibName:@"FirstView" bundle:nil]autorelease];
	UIViewController *tabViewController2 = [[[UIViewController alloc] initWithNibName:@"SecondView" bundle:nil]autorelease];
	UIViewController *tabViewController3 = [[[UIViewController alloc] initWithNibName:@"ThirdView" bundle:nil]autorelease];
	UIViewController *tabViewController4 = [[[UIViewController alloc] initWithNibName:@"FourthView" bundle:nil]autorelease];
	UIViewController *tabViewController5 = [[[UIViewController alloc] initWithNibName:@"FifthView" bundle:nil]autorelease];

	NSMutableArray *viewControllersArray = [[[NSMutableArray alloc] init]autorelease];
	[viewControllersArray addObject:tabViewController1];
	[viewControllersArray addObject:tabViewController2];
	[viewControllersArray addObject:tabViewController3];
	[viewControllersArray addObject:tabViewController4];
	[viewControllersArray addObject:tabViewController5];
	
	NSMutableArray *tabItemsArray = [[[NSMutableArray alloc] init]autorelease];
	[tabItemsArray addObject:tabItem1];
	[tabItemsArray addObject:tabItem2];
	[tabItemsArray addObject:tabItem3];
	[tabItemsArray addObject:tabItem4];
	[tabItemsArray addObject:tabItem5];
	
	tabView = [[GTabBar alloc] initWithTabViewControllers:viewControllersArray tabItems:tabItemsArray initialTab:0];
	[window addSubview:tabView.view];
	/*///////////*/
	
	[window makeKeyAndVisible];

    return YES;
}
- (void)applicationWillResignActive:(UIApplication *)application {
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}
- (void)applicationDidEnterBackground:(UIApplication *)application {
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, called instead of applicationWillTerminate: when the user quits.
     */
}
- (void)applicationWillEnterForeground:(UIApplication *)application {
    /*
     Called as part of  transition from the background to the inactive state: here you can undo many of the changes made on entering the background.
     */
}
- (void)applicationDidBecomeActive:(UIApplication *)application {
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}
- (void)applicationWillTerminate:(UIApplication *)application {
    /*
     Called when the application is about to terminate.
     See also applicationDidEnterBackground:.
     */
}
#pragma mark -
#pragma mark CustomTabBarView FUTURE methods
/*
// Optional UITabBarControllerDelegate method.
- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController {
}
*/

/*
// Optional UITabBarControllerDelegate method.
- (void)tabBarController:(UITabBarController *)tabBarController didEndCustomizingViewControllers:(NSArray *)viewControllers changed:(BOOL)changed {
}
*/
#pragma mark -
#pragma mark Memory management

- (void)applicationDidReceiveMemoryWarning:(UIApplication *)application {
    /*
     Free up as much memory as possible by purging cached data objects that can be recreated (or reloaded from disk) later.
     */
}


- (void)dealloc {
    [tabView release];
    [window release];
    [super dealloc];
}

@end

