//
//  City.h
//  CityGuide
//
//  Created by Chin on 13/05/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface City : NSObject {
	NSString *cityName;
	NSString *cityDescription;
	UIImage *cityPicture;
}

@property (nonatomic, retain) NSString *cityName;
@property (nonatomic, retain) NSString *cityDescription;
@property (nonatomic, retain) UIImage *cityPicture;

@end
