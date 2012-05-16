//
//  CustomTabBariPhoneAppDelegate.h
//  CustomTabBariPhone
//
//  Created by Daniel Hollis on 27/09/2010.
//  Copyright 2010 Guerrilla Digital Media. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GTabBar.h"
@interface CustomTabBariPhoneAppDelegate : NSObject <UIApplicationDelegate, UITabBarControllerDelegate> {
    UIWindow *window;
	GTabBar *tabView;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;



@end
