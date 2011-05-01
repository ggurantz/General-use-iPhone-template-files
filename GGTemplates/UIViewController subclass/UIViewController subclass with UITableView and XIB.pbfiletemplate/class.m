//
//  «FILENAME»
//  «PROJECTNAME»
//
//  Created by «FULLUSERNAME» on «DATE».
//  Copyright «YEAR» «ORGANIZATIONNAME». All rights reserved.
//

«OPTIONALHEADERIMPORTLINE»

@interface «FILEBASENAMEASIDENTIFIER» ()

@end


@implementation «FILEBASENAMEASIDENTIFIER»

@synthesize tableView = _tableView;

- (id)init
{
	return [self initWithNibName:@"«FILEBASENAMEASIDENTIFIER»" bundle:[NSBundle mainBundle]];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)bundleOrNil
{
	self = [super initWithNibName:nibNameOrNil bundle:bundleOrNil];
	
	if (self != nil)
	{
		
	}
	
	return self;
}

- (void)dealloc 
{
	[_tableView release]; _tableView = nil;
	
    [super dealloc];
}

#pragma mark -
#pragma mark UIView

- (void)viewDidLoad
{
	[super viewDidLoad];
}

- (void)viewWillAppear:(BOOL)animated
{
	[super viewWillAppear:animated];
}

#pragma mark -
#pragma mark UITableView

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
	return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
	return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath 
{
	static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
	if (cell == nil) 
	{
		cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
	}
	
	return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
	
}

@end
