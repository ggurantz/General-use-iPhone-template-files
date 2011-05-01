//
//  «FILENAME»
//  «PROJECTNAME»
//
//  Created by «FULLUSERNAME» on «DATE».
//  Copyright «YEAR» «ORGANIZATIONNAME». All rights reserved.
//

#import <UIKit/UIKit.h>


@interface «FILEBASENAMEASIDENTIFIER» : UIViewController <UITableViewDelegate, UITableViewDataSource>
{
	UITableView *_tableView;
}

@property (nonatomic, readwrite, retain) IBOutlet UITableView *tableView;

@end
