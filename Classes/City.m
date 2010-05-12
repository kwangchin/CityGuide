//
//  City.m
//  CityGuide
//
//  Created by Chin on 13/05/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "City.h"


@implementation City

@synthesize cityName;
@synthesize cityDescription;
@synthesize cityPicture;

-(void) dealloc {
	[cityName release];
	[cityDescription release];
	[cityPicture release];
	[super dealloc];
}

@end
