//
//  OWSpaceImageViewController.m
//  Out of this World
//
//  Created by Admin on 10/5/2557 BE.
//  Copyright (c) 2557 Bonaliza. All rights reserved.
//

#import "OWSpaceImageViewController.h"
#import <UIKit/UIKit.h>
@interface OWSpaceImageViewController ()

@end

@implementation OWSpaceImageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //self.imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Jupiter.jpg"]];
    self.imageView = [[UIImageView alloc] initWithImage:self.spaceObject.spaceImage];
    // set scrollview size as the image frame size;
    self.scrollView.contentSize = self.imageView.frame.size;
    
    // adding subview to main scroll view
    [self.scrollView addSubview:self.imageView];
    
    // set it self to be deligate
    self.scrollView.delegate = self;
    
    // set maximum and minimum zoom scale when it is zooming
    self.scrollView.maximumZoomScale = 1.5;
    self.scrollView.minimumZoomScale = 0.5;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


// this method is for zooming you have to add it after add delegate in header file
- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView{
    return self.imageView;
}
@end
