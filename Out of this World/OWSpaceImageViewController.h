//
//  OWSpaceImageViewController.h
//  Out of this World
//
//  Created by Admin on 10/5/2557 BE.
//  Copyright (c) 2557 Bonaliza. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "OWSpaceObject.h"

@interface OWSpaceImageViewController : UIViewController <UIScrollViewDelegate>

@property (strong, nonatomic) IBOutlet UIScrollView *scrollView;
@property (strong, nonatomic) UIImageView *imageView;
@property (strong, nonatomic) OWSpaceObject *spaceObject;

@end
