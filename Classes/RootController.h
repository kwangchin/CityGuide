//
//  CityGuideViewController.h
//  CityGuide
//
//  Created by Chin on 12/05/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RootController : UIViewController
  <UITableViewDataSource, UITableViewDelegate>
{
	UITableView *tableView;
	NSMutableArray *cities;
}

@property (nonatomic, retain) IBOutlet UITableView *tableView;

@end

