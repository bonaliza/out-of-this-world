//
//  OWOuterSpaceTableViewController.h
//  Out of this World
//
//  Created by Admin on 10/4/2557 BE.
//  Copyright (c) 2557 Bonaliza. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "OWAddSpaceObjectViewController.h"

@interface OWOuterSpaceTableViewController : UITableViewController <OWAddSpaceObjectViewControllerDelegate>

@property (strong,nonatomic) NSMutableArray *planets;
@property (strong,nonatomic) NSMutableArray *addedSpaceObjects;

@end
