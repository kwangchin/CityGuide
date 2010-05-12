//
//  CityGuideAppDelegate.h
//  CityGuide
//
//  Created by Chin on 12/05/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class RootController;

@interface CityGuideDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    RootController *viewController;
	NSMutableArray *cities;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet RootController *viewController;
@property (nonatomic, retain) NSMutableArray *cities;

@end

