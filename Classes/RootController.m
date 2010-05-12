//
//  CityGuideViewController.m
//  CityGuide
//
//  Created by Chin on 12/05/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import "RootController.h"
#import "CityGuideDelegate.h"
#import "City.h"

@implementation RootController

@synthesize tableView;

#pragma mark Instance Methods

/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/



// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    //[super viewDidLoad];
	CityGuideDelegate *delegate =
	(CityGuideDelegate *)[[UIApplication sharedApplication] delegate];
	cities = delegate.cities;
}




// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    // return (interfaceOrientation == UIInterfaceOrientationPortrait);
	return YES;
}


- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
	[tableView release];
	[cities release];
    [super dealloc];
}

#pragma mark UITableViewDataSource Methods

- (UITableViewCell *)tableView:(UITableView *)tv
cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
	UITableViewCell *cell =
	[tv dequeueReusableCellWithIdentifier:@"cell"];
	if(nil == cell) {
		cell = [[[UITableViewCell alloc]
				 initWithFrame:CGRectZero reuseIdentifier:@"cell"] autorelease];
	}
	City *thisCity = [cities objectAtIndex:indexPath.row];
	cell.textLabel.text = thisCity.cityName;
	return cell;
}

- (NSInteger)tableView:(UITableView *)tv
numberOfRowsInSection:(NSInteger)section
{
	return [cities count];
}

#pragma mark UITableViewDelegate Methods

- (void)tableView:(UITableView *)tv
didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
	City *thisCity = [cities objectAtIndex:indexPath.row];
	UIAlertView *alert = [[UIAlertView alloc]
						  initWithTitle:thisCity.cityName message:thisCity.cityDescription delegate:self cancelButtonTitle:nil otherButtonTitles:@"OK", nil];
	[alert show];
	[alert autorelease];
	[tv deselectRowAtIndexPath:indexPath animated:YES];
}

@end
