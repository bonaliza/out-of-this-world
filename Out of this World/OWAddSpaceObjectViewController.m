//
//  OWAddSpaceObjectViewController.m
//  Out of this World
//
//  Created by Admin on 10/8/2557 BE.
//  Copyright (c) 2557 Bonaliza. All rights reserved.
//

#import "OWAddSpaceObjectViewController.h"

@interface OWAddSpaceObjectViewController ()

@end

@implementation OWAddSpaceObjectViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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

- (IBAction)cancelButtonPressed:(UIButton *)sender {
    [self.delegate didCancel];
}

- (IBAction)addButtonPressed:(UIButton *)sender {
    OWSpaceObject *newSpaceObject = [[OWSpaceObject alloc] init];
    newSpaceObject = [self returnNewSpaceObject];
    [self.delegate addSpaceObject:newSpaceObject];
}

- (OWSpaceObject *)returnNewSpaceObject{
    OWSpaceObject *addedSpaceObject = [[OWSpaceObject alloc] init];
    addedSpaceObject.name = self.nameTextField.text;
    addedSpaceObject.nickname  = self.nicknameTextField.text;
    addedSpaceObject.diameter = [self.diameterTextField.text floatValue];
    addedSpaceObject.temperature = [self.temperatureTextfield.text floatValue];
    addedSpaceObject.numberOfMoons = [self.numberOfMoons.text floatValue];
    addedSpaceObject.interestFact = self.interstingFactTextField.text;
    addedSpaceObject.spaceImage = [UIImage imageNamed:@"EinsteinRing.jpg"];
    return addedSpaceObject;
    
}
@end

