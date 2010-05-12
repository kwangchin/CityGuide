//
//  CityGuideAppDelegate.m
//  CityGuide
//
//  Created by Chin on 12/05/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import "CityGuideDelegate.h"
#import "RootController.h"
#import "City.h"

@implementation CityGuideDelegate

@synthesize window;
@synthesize viewController;
@synthesize cities;


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
    City *london = [[City alloc] init];
	london.cityName = @"London";
	london.cityDescription = @"The capital of the United Kingdom and England";
	london.cityPicture = [UIImage imageNamed:@"London.jpg"];
	
	self.cities = [[NSMutableArray alloc]
				   initWithObjects:london, nil];
	[london release];
	
    // Override point for customization after app launch    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
	
	return YES;
}


- (void)dealloc {
    [viewController release];
    [window release];
	[cities release];
    [super dealloc];
}


@end
