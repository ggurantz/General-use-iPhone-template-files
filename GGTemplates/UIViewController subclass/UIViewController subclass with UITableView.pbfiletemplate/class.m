//
//  «FILENAME»
//  «PROJECTNAME»
//
//  Created by «FULLUSERNAME» on «DATE».
//  Copyright «YEAR» «ORGANIZATIONNAME». All rights reserved.
//

«OPTIONALHEADERIMPORTLINE»

@interface «FILEBASENAMEASIDENTIFIER» ()

@property (nonatomic, readwrite, retain) UITableView *tableView;

@end


@implementation «FILEBASENAMEASIDENTIFIER»

@synthesize tableView = _tableView;

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
	
	self.tableView = [[[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStylePlain] autorelease];
	[self.tableView setAutoresizingMask:0xFFFF];
	[self.tableView setDelegate:self];
	[self.tableView setDataSource:self];
	[self.tableView setFrame:[self.view bounds]];
	[self.view addSubview:self.tableView];
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
