//
//  SimpleTabBarAppDelegate.m
//  SimpleTabBar
//
//  Created by ntaku on 09/04/21.
//  Copyright http://d.hatena.ne.jp/ntaku 2009. All rights reserved.
//

#import "SimpleTabBarAppDelegate.h"
#import "MyView01.h"
#import "MyView02.h"

@implementation SimpleTabBarAppDelegate

@synthesize window;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    
	
	MyView01 *ctrl01 = [[MyView01 alloc] initWithNibName:nil bundle:nil];
	MyView02 *ctrl02 = [[MyView02 alloc] initWithNibName:nil bundle:nil];
	
	UITabBarController *tab = [[UITabBarController alloc] initWithNibName:nil bundle:nil];
	[tab setViewControllers:[NSArray arrayWithObjects:ctrl01, ctrl02, nil]];
	[window addSubview:tab.view];
	
	[ctrl01 release];
	[ctrl02 release];

    // Override point for customization after application launch
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [window release];
    [super dealloc];
}


@end
