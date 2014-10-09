//
//  OWAddSpaceObjectViewController.h
//  Out of this World
//
//  Created by Admin on 10/8/2557 BE.
//  Copyright (c) 2557 Bonaliza. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "OWSpaceObject.h"

@protocol OWAddSpaceObjectViewControllerDelegate <NSObject>

// it made our program has to implement this two method below;
// or you can use @optional to tell these two functions are optional;
@required
-(void)addSpaceObject:(OWSpaceObject *)spaceObject;
-(void)didCancel;

@end



@interface OWAddSpaceObjectViewController : UIViewController

@property (weak, nonatomic) id <OWAddSpaceObjectViewControllerDelegate> delegate;

@property (strong, nonatomic) IBOutlet UITextField *nameTextField;
@property (strong, nonatomic) IBOutlet UITextField *nicknameTextField;
@property (strong, nonatomic) IBOutlet UITextField *diameterTextField;
@property (strong, nonatomic) IBOutlet UITextField *temperatureTextfield;
@property (strong, nonatomic) IBOutlet UITextField *numberOfMoons;
@property (strong, nonatomic) IBOutlet UITextField *interstingFactTextField;
- (IBAction)cancelButtonPressed:(UIButton *)sender;
- (IBAction)addButtonPressed:(UIButton *)sender;

@end
