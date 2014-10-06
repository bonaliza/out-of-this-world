//
//  OWSpaceDataViewController.h
//  Out of this World
//
//  Created by Nutkritta Thanachaikosol on 10/6/2557 BE.
//  Copyright (c) 2557 Bonaliza. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "OWSpaceObject.h"

@interface OWSpaceDataViewController : UIViewController <UITableViewDelegate , UITableViewDataSource>
@property (strong, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) OWSpaceObject *spaceObject;

@end
